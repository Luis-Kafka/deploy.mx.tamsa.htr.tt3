using System.Reflection;
using System.Runtime.CompilerServices;
[assembly: AssemblyInformationalVersion("1.0.0.0")]
[assembly: AssemblyTitle("Tenaris.Manager.Scripting.SendByPassMessages")]
[assembly: AssemblyDescription("Send messages to desktop Tenaris.View.Messages.Plugin.")]

namespace SendByPassMessages
{
    using System;
    using System.Xml.Serialization;
    using System.Linq;
    using System.Collections;
    using Tenaris.Manager.Scripting.Shared;
    using Tenaris.Manager.Scripting.Shared.Helpers;
    using Tenaris.Manager.Message.Shared;
    using Tenaris.Library.Shared;
    using Tenaris.Library.DbClient;
    using System.Collections.Generic;
    using Tenaris.Library.Framework;
    using System.Data;
    using System.Threading;
    using System.Timers;
    using System.Globalization;
    using Tenaris.Manager.Forum.Shared;
    using Tenaris.AutoAr.Siat.Manager.InVi.Shared;
    using Tenaris.AutoAr.Siat.Manager.InVi.Shared.Events;

    public class SendMessages : BaseScript
    {
        private DbClient dbClient;
        private readonly string spGetIsByPass = "[Custom].[ScriptingSendMessages]";

        private readonly string connectionString = "dbLevel2";
        private List<string> stations = new List<string>() { "PH", "UT_PÓRTICO", "EXPANSORA"};

        [ManagerReference(true)]
        public IInViManager InviManager { get; set; }

        [ManagerReference(true)]
        public IMessageManager MessageManager { get; set; }


        #region Initialize and Uninitialize

        protected override void DoActivate()
        {
            Trace.Debug("DoActivate()");
            try
            {
                var connectionStrings = GetConnectionStrings();

                dbClient = new DbClient(connectionString);
                dbClient.AddCommand(spGetIsByPass);
            }
            catch (System.Exception ex)
            {
                Trace.Exception(ex, "DoActivate()");
            }
        }

        protected override void DoDeactivate()
        {
            Trace.Debug("DoDeactivate()");
            dbClient.Dispose();
        }


        #endregion


        #region Managers related methods

        [ManagerEvent(typeof(IInViManager), ManagerEventKind.Connected)]
        public void OnInviManagerConnected()
        {
            Trace.Debug("OnInviManagerConnected()");

            SuscribeToInviEvents();
        }


        private void SuscribeToInviEvents()
        {
            Trace.Debug("SuscribeToInviEvents()");

            IStation station;
            foreach (var s in stations)
            {
                try
                {
                    station = InviManager.Stations.First(s1 => s1.Code == s);
                    station.AnonymousPipeReplaced += this.OnAnonymousPipeReplaced;
					Trace.Debug("SuscribeToInviEvents() - Suscribed to station {0}", s);
                }
                catch (Exception ex)
                {
                    Trace.Exception(ex, "Exception trying to suscribe to station '{0}'", s);
                }
            }
        }

        private void UnsuscribeToInviEvents()
        {
            Trace.Debug("UnsuscribeToInviEvents()");

            IStation station;
            foreach (var s in stations)
            {
                try
                {
                    station = InviManager.Stations.First(s1 => s1.Code == s);
                    station.AnonymousPipeReplaced -= this.OnAnonymousPipeReplaced;
                }
                catch (Exception ex)
                {
                    Trace.Exception(ex, "Exception trying to suscribe to station {0}", s);
                }
            }
        }


        protected virtual void OnAnonymousPipeReplaced(object sender, PipeArrivedEventArgs e)
        {
            try
            {
                IStation station = (sender as IStation);

                Trace.Debug("OnAnonymousPipeReplaced() - for station {0} and idTracking = {1} and PipeNumber = {2}", station.Code, e.IdTracking, e.PipeNumber);

				string messageText;
				string messageCode;
				
                bool thereIsAMessage = GetIsByPass(station.Code, e.IdTracking, out messageCode, out messageText);
                if (thereIsAMessage)
                {
                    Trace.Debug("OnAnonymousPipeReplaced() - message required fos station {0}. Sending message {1}...", station.Code, messageText);

                    MessageManager.SendMessage(messageCode, string.Format(messageText, e.PipeNumber));

                    Trace.Debug("OnAnonymousPipeReplaced() - message sent.");
                }
                else
                {
                    Trace.Debug("OnAnonymousPipeReplaced() - nothing to report for station {0}.", station.Code);
                }
            }
            catch (Exception ex)
            {
                Trace.Exception(ex, "OnAnonymousPipeReplaced()");
            }
        }

        #endregion


        #region DAL

        private bool GetIsByPass(string stationCode, int idTracking, out string messageCode, out string messageText )
        {
            Trace.Debug("GetIsByPass() - for station {0}", stationCode);
			
			messageCode = string.Empty;
			messageText = string.Empty;
            try
            {
                var inputParameters = new Dictionary<string, object>() { { "StationCode", (object)stationCode }, {"idTracking", (object)idTracking }  };

                var cmd = dbClient.GetCommand(spGetIsByPass);
				Trace.Debug("GetIsByPass() - get cmd for station {0}", stationCode);

                var reader = cmd.ExecuteReader(inputParameters);
				Trace.Debug("GetIsByPass() - reader executed for station {0}", stationCode);


				if(reader.Read())
				{
					Trace.Debug("GetIsByPass() - reader.Read() for station {0}", stationCode);

					messageCode = (string)reader["MessageCode"];
					messageText = (string)reader["MessageText"];
				}
				else
				{
					Trace.Warning("GetIsByPass() - reader is empty for station {0}", stationCode);
				}
				
				Trace.Debug("GetIsByPass() - for station {0}. messageText={1}, messageCode={2}", stationCode, messageText, messageCode );
            }
            catch (Exception e)
            {
                Trace.Warning("GetIsByPass failed for station {0}!.", stationCode);
                Trace.Exception(e);
				return false;
            }
			
			return (messageCode != string.Empty);
        }


        #endregion
    }
}
