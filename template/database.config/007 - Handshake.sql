--- Config dump file for schema Handshake
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Handshake.Composition
    UPDATE [Handshake].[Composition] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'CR', @Name = 'CR', @Description = 'CR', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="075191b7-efd2-42bd-9ac0-9b740de5a947" Id="3" Code="CR" Name="CR" Description="CR" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="8c5805c3-f942-4cfb-a894-23d150d5137b" Left="290" Top="114" Width="250" Height="256" IsEnabled="True" Id="2" Sequence="1" OperationEnableFlag="" IdDefinition="41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="d1d89d01-4a22-459a-95e3-4170641afd06" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" Left="290" Top="134" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="325af4ce-ee72-403f-97a9-b9abb0e6e3a4" Id="396" Code="CustomRD01" Offset="" Left="290" Top="154" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="2f679a9f-6747-46cb-8b99-28ab12749686" Id="397" Code="CustomRD02" Offset="" Left="290" Top="178" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="04fdb4f2-9639-4e38-83bc-e1829eea75f1" Id="398" Code="CustomRD03" Offset="" Left="290" Top="202" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c31cafef-14cb-4b2c-909e-602ced0a39fd" Id="399" Code="CustomRD04" Offset="" Left="290" Top="226" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d2be7850-a695-4851-9756-063fb417ebc2" Id="400" Code="CustomRD05" Offset="" Left="290" Top="250" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="59bbf8dc-14f5-43cc-b2a1-070e4cc71c2b" Id="401" Code="CustomRD06" Offset="" Left="290" Top="274" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a3e90721-b00a-4c22-b458-057e6367dafb" Id="402" Code="CustomWD01" Offset="" Left="461.436666666667" Top="154" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="afe8069c-3f5f-44b2-9681-bcff57a1d2d6" Id="403" Code="CustomWD02" Offset="" Left="461.436666666667" Top="178" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0dcf56d2-7efb-42a7-a18b-5a8eb8243339" Id="404" Code="CustomWD03" Offset="" Left="461.436666666667" Top="202" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="daf14ad3-45ab-4e61-8bde-277cf8105890" Id="405" Code="CustomWD04" Offset="" Left="461.436666666667" Top="226" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="caa9a808-06f7-46bd-a08b-02966c8a2e69" Id="406" Code="CustomWD05" Offset="" Left="461.436666666667" Top="250" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="57421f10-78c2-4bf3-867c-dabd7695d558" Id="407" Code="CustomWD06" Offset="" Left="461.436666666667" Top="274" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b3d7f1f8-a80b-4de8-ab74-e5ff73ef132c" Id="408" Code="CustomWD07" Offset="" Left="461.436666666667" Top="298" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="24a41d7c-fd22-4fe8-b3bb-81a11be9fc45" Id="409" Code="idTrackingRD" Offset="" Left="290" Top="298" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0de7ab69-1263-45f3-82a8-70f6ec35d8f4" Id="410" Code="idTrackingWR" Offset="" Left="461.323333333333" Top="322" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="713a9001-2168-4092-9f58-59aefa5bf3dd" Id="411" Code="result" Offset="" Left="501.556666666667" Top="346" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="2f7088a9-f8f1-493d-83c8-6b03b302ca53" Id="412" Code="TrackingType" Offset="" Left="290" Top="322" Width="77.13" Height="15" IsEnabled="True" CodeDefinition="TrkCreate" GuidDefinition="8c5805c3-f942-4cfb-a894-23d150d5137b" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'GDCN', @Name = 'GDCN', @Description = 'GDCN', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="a1417f70-5773-48f8-913e-6895d3d93486" Id="8" Code="GDCN" Name="GDCN" Description="GDCN" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" Left="335" Top="111" Width="250" Height="352" IsEnabled="True" Id="14" Sequence="1" OperationEnableFlag="" IdDefinition="44" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="22ee5f71-b7e9-4b7e-ae71-e1ca7c9ab6a3" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" Left="335" Top="131" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d1f1140f-ab16-48c5-8def-115cdb97abe6" Id="465" Code="CustomRD01" Offset="" Left="335" Top="151" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="99cc7b6d-e8d2-4852-a458-4f4118da316d" Id="466" Code="CustomRD02" Offset="" Left="335" Top="175" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d4267c88-4b93-486f-a897-454639465ecb" Id="467" Code="CustomRD03" Offset="" Left="335" Top="199" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="62199a70-4d38-4009-9a71-29441c208140" Id="468" Code="CustomRD04" Offset="" Left="335" Top="223" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1c39dc08-c412-464c-9939-ba79b6572bfa" Id="469" Code="CustomRD05" Offset="" Left="335" Top="247" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b13aa430-0365-4a2d-a97a-ea2ea3a00447" Id="470" Code="CustomRD06" Offset="" Left="335" Top="271" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="efccc945-c60d-4a4f-a19a-1c8178afe3ad" Id="471" Code="CustomRD07" Offset="" Left="335" Top="295" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="236e7f80-2fda-4000-940e-4e0809213006" Id="472" Code="CustomRD08" Offset="" Left="335" Top="319" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="23f798ab-fb7a-4c3d-afa9-4b4e3c03e4de" Id="473" Code="CustomRD09" Offset="" Left="335" Top="343" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cf09a9c4-6df3-45df-bd37-66d653abd2f6" Id="474" Code="CustomRD10" Offset="" Left="335" Top="367" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="657d244f-ab5c-4507-861a-7badfc6c856b" Id="475" Code="CustomWD01" Offset="" Left="506.436666666667" Top="151" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="4893b355-d453-4793-b57a-0f5ca312386f" Id="476" Code="CustomWD02" Offset="" Left="506.436666666667" Top="175" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="04d70870-0537-433f-b9a8-ea314a8af555" Id="477" Code="CustomWD03" Offset="" Left="506.436666666667" Top="199" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0d779d0f-cff6-464e-9bd6-11574cf5bab6" Id="478" Code="CustomWD04" Offset="" Left="506.436666666667" Top="223" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d3ba1415-85d8-40a8-8fb0-18956f6cf3f8" Id="479" Code="CustomWD05" Offset="" Left="506.436666666667" Top="247" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0c20c9c8-a3d6-4600-9c46-33cc08bd004f" Id="480" Code="CustomWD06" Offset="" Left="506.436666666667" Top="271" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0a0d9c92-9c47-4412-b0b8-206587452409" Id="481" Code="CustomWD07" Offset="" Left="506.436666666667" Top="295" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="588938c6-f8c8-4439-af65-cf0c3f13ae54" Id="482" Code="CustomWD08" Offset="" Left="506.436666666667" Top="319" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="559cd1ed-31e4-4c60-a1e6-b9129ce66fbe" Id="483" Code="idProductionHistory" Offset="" Left="477.153333333333" Top="343" Width="107.846666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e4f21a53-b7e8-4134-86ae-1a38e9344af4" Id="484" Code="idTracking" Offset="" Left="523.163333333333" Top="367" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="3bb1deb2-bf2a-44a0-a5d4-55dae63add10" Id="485" Code="idTrackingRD" Offset="" Left="335" Top="391" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="760b3ce5-53cf-46b5-af4e-024ee2bc762a" Id="486" Code="idTrkPassRD" Offset="" Left="335" Top="415" Width="72.4366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d00daa7a-d643-4f0b-accf-1f213bae9c3f" Id="487" Code="IsInverted" Offset="" Left="522.776666666667" Top="391" Width="62.2233333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="2e63ac4a-f098-4c11-83fe-b9602997007b" Id="488" Code="ItemStatus" Offset="" Left="518.906666666667" Top="415" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e60c34c4-692e-434c-96f3-4f1b15b05dd2" Id="489" Code="result" Offset="" Left="546.556666666667" Top="439" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="9ca9bfc0-a6ce-4abf-93c5-8dab5c9dd4d6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="7b91f4d4-72b2-4aa9-b32d-289739a4a889" Left="896" Top="184" Width="250" Height="136" IsEnabled="True" Id="15" Sequence="2" OperationEnableFlag="" IdDefinition="36" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="956c611e-711b-44bc-b840-214afce473aa" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" Left="896" Top="204" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="41e4a17b-4382-43fc-a5da-1794335499a6" Id="358" Code="idTrackingPass" Offset="" Left="896" Top="224" Width="84.2933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8efd0cb4-433e-404d-97a0-29cc7984720c" Id="359" Code="itemCount" Offset="" Left="896" Top="248" Width="62.0133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="81cc7e2f-051d-4614-9f4d-0ecfbbe5ac2b" Id="360" Code="itemStatus" Offset="" Left="896" Top="272" Width="64.6266666666667" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="493db202-f90d-4878-9d12-5cb2f7686cfc" Id="361" Code="result" Offset="" Left="1107.55666666667" Top="224" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="954a6c07-1b81-4c30-88b6-95897c6545a4" Id="362" Code="workTime" Offset="6" Left="896" Top="296" Width="65.7933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="e549e691-8809-4f00-9113-b9a4b00f32be" Id="11" Left="664" Top="152" Width="154.586666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="657d244f-ab5c-4507-861a-7badfc6c856b" GuidSink="e549e691-8809-4f00-9113-b9a4b00f32be" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|31.5;0|31.5;8.5|58;8.5|58;8.5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="e549e691-8809-4f00-9113-b9a4b00f32be" GuidSink="41e4a17b-4382-43fc-a5da-1794335499a6" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|30.7066666666666;0|30.7066666666666;64.5|56.4133333333333;64.5|56.4133333333333;64.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="54a7d42e-14f5-4c35-8ee7-5e37d98f5b48" Id="12" Left="651" Top="184" Width="154.586666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="4893b355-d453-4793-b57a-0f5ca312386f" GuidSink="54a7d42e-14f5-4c35-8ee7-5e37d98f5b48" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|25;0|25;16.5|45;16.5|45;16.5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="54a7d42e-14f5-4c35-8ee7-5e37d98f5b48" GuidSink="41e4a17b-4382-43fc-a5da-1794335499a6" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|37.2066666666666;0|37.2066666666666;32.5|69.4133333333333;32.5|69.4133333333333;32.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="e4d34904-a693-4cf8-9def-6c4dc166ca90" Id="362" Code="workTime" Offset="6" Left="84.2066666666667" Top="456" Width="65.7933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCount" GuidDefinition="7b91f4d4-72b2-4aa9-b32d-289739a4a889" GuidParameter="954a6c07-1b81-4c30-88b6-95897c6545a4" IdCompositionParameter="7" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="954a6c07-1b81-4c30-88b6-95897c6545a4" GuidSink="e4d34904-a693-4cf8-9def-6c4dc166ca90" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="725;0|725;203.5|365;203.5|365;195.5|5;195.5|5;160" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'GDVDI', @Name = 'GDVDI', @Description = 'GDVDI', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="333d4a66-b680-4094-9806-183b2d07d385" Id="10" Code="GDVDI" Name="GDVDI" Description="GDVDI" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" Left="280" Top="123" Width="250" Height="352" IsEnabled="True" Id="17" Sequence="1" OperationEnableFlag="" IdDefinition="44" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="daf94910-b766-4382-8aef-695e6872d838" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" Left="280" Top="143" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="492fa8af-6a36-4b30-b60a-3ddc23f7a5a8" Id="465" Code="CustomRD01" Offset="" Left="280" Top="163" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9b703f6d-aed7-4d50-aa89-84d27f248f28" Id="466" Code="CustomRD02" Offset="" Left="280" Top="187" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ac863acd-a4f2-4337-9ce0-3eba8f913284" Id="467" Code="CustomRD03" Offset="" Left="280" Top="211" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="42a48cc8-e612-4491-808e-6d81c37f639e" Id="468" Code="CustomRD04" Offset="" Left="280" Top="235" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1b6f8391-7b12-468a-8e96-dea7e0646b7a" Id="469" Code="CustomRD05" Offset="" Left="280" Top="259" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="3dabe5af-6f7e-4354-b1d2-a02351a556f1" Id="470" Code="CustomRD06" Offset="" Left="280" Top="283" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a18a400f-dfd9-4970-8545-0ee9f963be1a" Id="471" Code="CustomRD07" Offset="" Left="280" Top="307" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1ed88362-862f-46d9-9992-6520393d21a4" Id="472" Code="CustomRD08" Offset="" Left="280" Top="331" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ea29491a-f7de-4eaa-b034-6320308cc90b" Id="473" Code="CustomRD09" Offset="" Left="280" Top="355" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a9f00e75-d2e6-4cd2-824e-83633f01bb2b" Id="474" Code="CustomRD10" Offset="" Left="280" Top="379" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="60e3b468-9e18-44d9-a7c3-6021206b96ef" Id="475" Code="CustomWD01" Offset="" Left="451.436666666667" Top="163" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5a7ebb2c-7497-4b9f-96c6-ace6f702dce2" Id="476" Code="CustomWD02" Offset="" Left="451.436666666667" Top="187" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f401005d-5cd3-4251-8251-549b4e9043fd" Id="477" Code="CustomWD03" Offset="" Left="451.436666666667" Top="211" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b7ea442c-e4bd-4eb3-a8a5-89fd624b5d03" Id="478" Code="CustomWD04" Offset="" Left="451.436666666667" Top="235" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="66b133f4-4fd9-46a8-9807-e6334f0a812d" Id="479" Code="CustomWD05" Offset="" Left="451.436666666667" Top="259" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="adc8d389-a301-428c-8c7d-d9f569d918d7" Id="480" Code="CustomWD06" Offset="" Left="451.436666666667" Top="283" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c9da368e-b54f-4a2c-81fc-38ed93218f59" Id="481" Code="CustomWD07" Offset="" Left="451.436666666667" Top="307" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a1f086dc-e3dd-46f3-9b80-f12bede65abf" Id="482" Code="CustomWD08" Offset="" Left="451.436666666667" Top="331" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="42ccc07d-7411-41f9-a387-af1fad5bc16f" Id="483" Code="idProductionHistory" Offset="" Left="422.153333333333" Top="355" Width="107.846666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="80c2c4a6-224b-43ca-ac02-7bf7b6724f1b" Id="484" Code="idTracking" Offset="" Left="468.163333333333" Top="379" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="89629d1d-0e88-42bc-ae48-fa09c3ae7e6c" Id="485" Code="idTrackingRD" Offset="" Left="280" Top="403" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="83abd7f9-69c3-4e17-bab3-0c4f0a06c2b1" Id="486" Code="idTrkPassRD" Offset="" Left="280" Top="427" Width="72.4366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f975b126-e659-422c-b37f-3bec32251303" Id="487" Code="IsInverted" Offset="" Left="467.776666666667" Top="403" Width="62.2233333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5c11e013-ee63-4c17-bffc-7f6f54823135" Id="488" Code="ItemStatus" Offset="" Left="463.906666666667" Top="427" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f2360080-e60d-433d-87f2-1c6b6a9b4412" Id="489" Code="result" Offset="" Left="491.556666666667" Top="451" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="378e5cf5-f88d-4f70-9c08-1429ff2d7e11" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" Left="788" Top="225" Width="250" Height="88" IsEnabled="True" Id="18" Sequence="2" OperationEnableFlag="" IdDefinition="61" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="4d34d62f-ad33-41ec-8e71-6abaea1bbc9a" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" Left="788" Top="245" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9feb67b5-751f-4231-bbab-0c2ba2b1bf5d" Id="646" Code="IdTracking" Offset="" Left="788" Top="265" Width="63.3033333333333" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d49ba702-786d-48d7-9073-54e5711935cd" Id="648" Code="IdTrackingPass" Offset="" Left="788" Top="289" Width="85.76" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="290d844b-e7ee-43cf-94cd-00c91ee0d19e" Id="649" Code="StationStatus" Offset="5" Left="951.743333333333" Top="265" Width="86.2566666666667" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cf7d52d0-76a9-4436-a4ad-99032717c6e1" Id="650" Code="IdInspection" Offset="6" Left="955.55" Top="289" Width="82.45" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="96e20f2b-b7d5-4865-a772-07d77a9f4f86" Id="13" Left="601" Top="182" Width="120.636666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="80c2c4a6-224b-43ca-ac02-7bf7b6724f1b" GuidSink="96e20f2b-b7d5-4865-a772-07d77a9f4f86" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;189.5|5;189.5|27.5;189.5|27.5;0|50;0|50;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="96e20f2b-b7d5-4865-a772-07d77a9f4f86" GuidSink="9feb67b5-751f-4231-bbab-0c2ba2b1bf5d" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|25.1816666666667;0|25.1816666666667;75.5|45.3633333333333;75.5|45.3633333333333;75.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="634e6e02-7504-444d-bc5e-6bb8f7aabb81" Id="10" Code="VALUE_SETTER_0" Name="VALUE_SETTER_0" Description="VALUE_SETTER_0" ValueUri="value://0" Left="604" Top="313" Width="108.853333333333" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="634e6e02-7504-444d-bc5e-6bb8f7aabb81" GuidSink="d49ba702-786d-48d7-9073-54e5711935cd" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;34.2916666666667|5;34.2916666666667|29.5733333333333;34.2916666666667|29.5733333333333;0|54.1466666666666;0|54.1466666666666;0" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="20cfed98-8950-43f3-bb85-37914b9ca615" Id="649" Code="StationStatus" Offset="5" Left="1350" Top="264" Width="86.2566666666667" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" GuidParameter="290d844b-e7ee-43cf-94cd-00c91ee0d19e" IdCompositionParameter="9" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="290d844b-e7ee-43cf-94cd-00c91ee0d19e" GuidSink="20cfed98-8950-43f3-bb85-37914b9ca615" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;1|5;1|148;1|148;0|291;0|291;0" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="74b4f4ac-73ff-4542-a49a-34137becb227" Id="650" Code="IdInspection" Offset="6" Left="1350" Top="288" Width="82.45" Height="15" IsEnabled="True" CodeDefinition="VdiInspection" GuidDefinition="eb0d4968-b962-4fd6-85ca-7f41b7d42ecd" GuidParameter="cf7d52d0-76a9-4436-a4ad-99032717c6e1" IdCompositionParameter="10" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="cf7d52d0-76a9-4436-a4ad-99032717c6e1" GuidSink="74b4f4ac-73ff-4542-a49a-34137becb227" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;1|5;1|148;1|148;0|291;0|291;0" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'LDCN', @Name = 'LDCN', @Description = 'Load Count', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="LDCN" Name="LDCN" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="d16b210d-18dc-4f18-8a85-302b89024959" Id="1" Code="LDCN" Name="LDCN" Description="Load Count" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="4e71943e-452b-47ab-968d-a0349aaa620c" Left="456" Top="145" Width="250" Height="136" IsEnabled="True" Id="1" Sequence="1" OperationEnableFlag="" IdDefinition="8" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="876b3968-48ed-47e0-b4ad-7f96fb87218f" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" Left="456" Top="165" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a9aeae49-76cc-4bea-be87-262cf7cc286c" Id="47" Code="idTracking" Offset="" Left="456" Top="185" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1ca3dee4-4496-44dc-85d9-4e1436802064" Id="48" Code="idTrackingPass" Offset="" Left="621.706666666667" Top="185" Width="84.2933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="71947474-5e09-4833-b305-4a9781bce716" Id="49" Code="itemCount" Offset="" Left="456" Top="209" Width="62.0133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ee86a2a7-3c9d-4e7a-ba62-808727c43d2f" Id="50" Code="itemStatus" Offset="" Left="456" Top="233" Width="64.6266666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="12dc8324-1035-4248-a7e9-208c0f869b09" Id="51" Code="lockRequest" Offset="" Left="635.486666666667" Top="209" Width="70.5133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="48fbc041-3955-4a1c-a299-ac164a1d3d7a" Id="52" Code="result" Offset="" Left="667.556666666667" Top="233" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="df8bb94f-66a9-43fb-9086-0582686ef6ef" Id="53" Code="workTime" Offset="" Left="456" Top="257" Width="59.0266666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoadCount" GuidDefinition="4e71943e-452b-47ab-968d-a0349aaa620c" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="c3ea42fa-e1f4-4320-99fa-fc80d4afb1a0" Id="3" Code="VALUE_SETTER_0" Name="VALUE_SETTER_0" Description="VALUE_SETTER_0" ValueUri="value://0" Left="202" Top="155" Width="108.853333333333" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="c3ea42fa-e1f4-4320-99fa-fc80d4afb1a0" GuidSink="a9aeae49-76cc-4bea-be87-262cf7cc286c" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|64.5733333333333;0|64.5733333333333;19.7083333333333|124.146666666667;19.7083333333333|124.146666666667;19.7083333333333" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="c3ea42fa-e1f4-4320-99fa-fc80d4afb1a0" GuidSink="df8bb94f-66a9-43fb-9086-0582686ef6ef" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|64.5733333333333;0|64.5733333333333;91.7083333333333|124.146666666667;91.7083333333333|124.146666666667;91.7083333333333" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="97f1f80f-d912-40ac-8acc-cb494d475fe3" Id="4" Code="VALUE_SETTER_1" Name="VALUE_SETTER_1" Description="VALUE_SETTER_1" ValueUri="value://1" Left="193" Top="209" Width="108.853333333333" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="97f1f80f-d912-40ac-8acc-cb494d475fe3" GuidSink="71947474-5e09-4833-b305-4a9781bce716" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;10.2916666666667|5;10.2916666666667|69.0733333333333;10.2916666666667|69.0733333333333;0|133.146666666667;0|133.146666666667;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="97f1f80f-d912-40ac-8acc-cb494d475fe3" GuidSink="ee86a2a7-3c9d-4e7a-ba62-808727c43d2f" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|69.0733333333333;0|69.0733333333333;13.7083333333333|133.146666666667;13.7083333333333|133.146666666667;13.7083333333333" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'TR', @Name = 'TR', @Description = 'TR', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="a1ae3604-864f-4328-ab2a-40205b563954" Id="9" Code="TR" Name="TR" Description="TR" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="0f56a68a-eff4-4df6-bcc3-288e4eb85237" Left="415" Top="163" Width="250" Height="256" IsEnabled="True" Id="16" Sequence="1" OperationEnableFlag="" IdDefinition="53" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="9313799a-0439-40b2-b556-f3e7281bc168" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" Left="415" Top="183" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="147e4ddb-cfa8-4dc8-a98f-cda235332429" Id="548" Code="Count" Offset="" Left="415" Top="203" Width="39.6466666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="bcf559c5-594a-4c5b-a619-9ed347f973b7" Id="549" Code="CustomWD01" Offset="" Left="586.436666666667" Top="203" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="07ae826b-674f-421f-be56-f69727756118" Id="550" Code="CustomWD02" Offset="" Left="586.436666666667" Top="227" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1a1315cd-c66d-442a-9b46-aa30367bc74f" Id="551" Code="CustomWD03" Offset="" Left="586.436666666667" Top="251" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="18200e36-c8ea-40b2-8e0b-3fd093cbb07b" Id="552" Code="CustomWD04" Offset="" Left="586.436666666667" Top="275" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="10b3fef5-962e-4476-a2eb-1322bfc8320e" Id="553" Code="DestZoneStatus" Offset="" Left="574.723333333333" Top="299" Width="90.2766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9e2237b5-80d3-482e-aef9-730104897ce3" Id="554" Code="Direction" Offset="5" Left="415" Top="227" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="47d4c934-3cfa-409e-8b0c-a1ac981321bc" Id="555" Code="idTrackingWR" Offset="" Left="586.323333333333" Top="323" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f066472b-9414-472d-83c2-a70a6f8d15e5" Id="556" Code="ItemStatus" Offset="" Left="598.906666666667" Top="347" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="41ac11a6-1fb0-4c96-8e6a-810796893307" Id="557" Code="result" Offset="" Left="626.556666666667" Top="371" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="bb1728ea-afc6-4ea9-a4ea-dd116f804232" Id="558" Code="SourceZoneStatus" Offset="" Left="562.87" Top="395" Width="102.13" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="43797660-7d87-485c-8f8e-ff2b903b5979" Id="554" Code="Direction" Offset="5" Left="88.8266666666667" Top="216" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="0f56a68a-eff4-4df6-bcc3-288e4eb85237" GuidParameter="9e2237b5-80d3-482e-aef9-730104897ce3" IdCompositionParameter="8" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="9e2237b5-80d3-482e-aef9-730104897ce3" GuidSink="43797660-7d87-485c-8f8e-ff2b903b5979" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="244;11|244;11|124.5;11|124.5;0|5;0|5;0" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'TRGD', @Name = 'TRGD', @Description = 'TRGD', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="5ee46797-0a40-4208-83b8-f49e59c3c991" Id="5" Code="TRGD" Name="TRGD" Description="TRGD" TagReadCount="10" TagWriteCount="10" DesignWidth="1200" DesignHeight="500" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" Left="220" Top="158" Width="250" Height="256" IsEnabled="True" Id="7" Sequence="1" OperationEnableFlag="" IdDefinition="53" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="aae563da-dca3-4712-88a3-3cea25986975" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" Left="220" Top="178" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5d8fe6c7-492b-4982-a96e-e8e96a2279a7" Id="548" Code="Count" Offset="" Left="220" Top="198" Width="39.6466666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cdb16e08-79e9-4f59-baf8-f4767ced96b8" Id="549" Code="CustomWD01" Offset="" Left="391.436666666667" Top="198" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5180e9e0-07bf-48ee-acbe-618e9ccd8f32" Id="550" Code="CustomWD02" Offset="" Left="391.436666666667" Top="222" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1c6e0d86-2c10-47dc-9fdf-f952665492d1" Id="551" Code="CustomWD03" Offset="" Left="391.436666666667" Top="246" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1b3f2190-6a6b-4f80-8d63-0a607f14c0d2" Id="552" Code="CustomWD04" Offset="" Left="391.436666666667" Top="270" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ca59a560-19db-4c46-ad98-3db30ae91105" Id="553" Code="DestZoneStatus" Offset="" Left="379.723333333333" Top="294" Width="90.2766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f38eb408-6659-49cd-a519-a274ab28386d" Id="554" Code="Direction" Offset="5" Left="220" Top="222" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="806f39d9-7e3f-40b4-b18e-0b3498e9e01e" Id="555" Code="idTrackingWR" Offset="" Left="391.323333333333" Top="318" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c0510e41-04b4-4d96-8775-e4766aac7bb7" Id="556" Code="ItemStatus" Offset="" Left="403.906666666667" Top="342" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1a6f2061-5f8d-4da3-b378-6fb2236d0f62" Id="557" Code="result" Offset="" Left="431.556666666667" Top="366" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="710cce11-9280-4779-9425-7f7c91a179b9" Id="558" Code="SourceZoneStatus" Offset="" Left="367.87" Top="390" Width="102.13" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="f59302f4-4c24-43ae-bb3d-58628407b65b" Left="720" Top="121" Width="250" Height="352" IsEnabled="True" Id="8" Sequence="2" OperationEnableFlag="" IdDefinition="44" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="ddf45dd2-3fbe-43b2-870d-248535eba6d7" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" Left="720" Top="141" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b1e682e0-e63e-4b9d-b2f7-8cf1419c0631" Id="465" Code="CustomRD01" Offset="7" Left="720" Top="161" Width="82.64" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1d735cb3-22d5-46f8-aa35-198f134d7ed9" Id="466" Code="CustomRD02" Offset="" Left="720" Top="185" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="baef96cb-9b82-4472-9153-6a58a65355d9" Id="467" Code="CustomRD03" Offset="" Left="720" Top="209" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="60db497d-6bae-4953-b91b-f14649def097" Id="468" Code="CustomRD04" Offset="" Left="720" Top="233" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1198d730-c34e-4e3b-8e2b-2671749c7e64" Id="469" Code="CustomRD05" Offset="" Left="720" Top="257" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="797e2a78-357b-4101-8f44-7477fe2a963c" Id="470" Code="CustomRD06" Offset="" Left="720" Top="281" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5da83df7-0540-40f6-a021-9a6971b1a9bf" Id="471" Code="CustomRD07" Offset="" Left="720" Top="305" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="33b0e8f4-cb6c-4bc2-ba41-a9d25cce72d9" Id="472" Code="CustomRD08" Offset="" Left="720" Top="329" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="91b2a72d-dbe1-45e9-8945-610e0b9eabab" Id="473" Code="CustomRD09" Offset="" Left="720" Top="353" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="71a96a88-fe78-4eab-8a35-da74a2280407" Id="474" Code="CustomRD10" Offset="" Left="720" Top="377" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="15d91749-5c7f-4add-9620-6ed64c0c2c6b" Id="475" Code="CustomWD01" Offset="5" Left="883.9" Top="161" Width="86.1" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f2f83611-f365-4b48-9aab-c3bd8ab6c5aa" Id="476" Code="CustomWD02" Offset="" Left="891.436666666667" Top="185" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c1931079-bad6-4d57-a881-a52c4e3f9cce" Id="477" Code="CustomWD03" Offset="" Left="891.436666666667" Top="209" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="efc4d391-ef95-41c1-9e03-b3e436e1325e" Id="478" Code="CustomWD04" Offset="" Left="891.436666666667" Top="233" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="511a281e-c9f0-4ebf-a47d-94c9e22da3b9" Id="479" Code="CustomWD05" Offset="" Left="891.436666666667" Top="257" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d94ad9fa-5e3f-404b-b726-bbea38bef44c" Id="480" Code="CustomWD06" Offset="" Left="891.436666666667" Top="281" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d6ee6e3a-f66d-41b2-b303-4bc25ebefce4" Id="481" Code="CustomWD07" Offset="" Left="891.436666666667" Top="305" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c8f8cfe4-0397-451e-b9a6-b1f78d24e9ca" Id="482" Code="CustomWD08" Offset="" Left="891.436666666667" Top="329" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ff1edf01-a9a7-48a4-b2f6-e57fb37b70d9" Id="483" Code="idProductionHistory" Offset="" Left="862.153333333333" Top="353" Width="107.846666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="90a12812-0191-4aae-abf9-f081254a55cc" Id="484" Code="idTracking" Offset="" Left="908.163333333333" Top="377" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cb177e76-37f9-40d4-8c5c-ab38f8680d4d" Id="485" Code="idTrackingRD" Offset="" Left="720" Top="401" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f0d2a5a7-d9f1-42ef-8422-98c54bb3bbee" Id="486" Code="idTrkPassRD" Offset="" Left="720" Top="425" Width="72.4366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="97477560-e827-4ff9-ac62-bc864eed7a91" Id="487" Code="IsInverted" Offset="" Left="907.776666666667" Top="401" Width="62.2233333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="97a0b566-7ef7-43d9-a53b-bcc53d05e1dd" Id="488" Code="ItemStatus" Offset="" Left="903.906666666667" Top="425" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="7c266176-ee13-4b6a-bf17-ba61fef364de" Id="489" Code="result" Offset="" Left="931.556666666667" Top="449" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="ee7e7398-bec0-4927-8594-4cbdd2365342" Id="554" Code="Direction" Offset="5" Left="88.8266666666667" Top="216" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="a4c6b26c-2dfc-4b64-90a8-34cdd62c0d41" GuidParameter="f38eb408-6659-49cd-a519-a274ab28386d" IdCompositionParameter="4" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="f38eb408-6659-49cd-a519-a274ab28386d" GuidSink="ee7e7398-bec0-4927-8594-4cbdd2365342" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="49;6|49;6|27;6|27;0|5;0|5;0" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="ce52b268-2228-4d91-9ffc-14fc0236a2d1" Id="465" Code="CustomRD01" Offset="7" Left="67.36" Top="432" Width="82.64" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" GuidParameter="b1e682e0-e63e-4b9d-b2f7-8cf1419c0631" IdCompositionParameter="5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="b1e682e0-e63e-4b9d-b2f7-8cf1419c0631" GuidSink="ce52b268-2228-4d91-9ffc-14fc0236a2d1" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="549;0|549;273.5|5;273.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="4c001cf0-09ba-4f2f-8516-934dc9ea1c0a" Id="6" Left="539" Top="259" Width="147.666666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="806f39d9-7e3f-40b4-b18e-0b3498e9e01e" GuidSink="4c001cf0-09ba-4f2f-8516-934dc9ea1c0a" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;51.5|5;51.5|26.5;51.5|26.5;0|48;0|48;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="4c001cf0-09ba-4f2f-8516-934dc9ea1c0a" GuidSink="cb177e76-37f9-40d4-8c5c-ab38f8680d4d" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|8.66666666666669;0|8.66666666666669;134.5|12.3333333333334;134.5|12.3333333333334;134.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="2b6a7869-a56e-4d0b-a188-6465ec8b7057" Id="475" Code="CustomWD01" Offset="5" Left="1350" Top="288" Width="86.1" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f59302f4-4c24-43ae-bb3d-58628407b65b" GuidParameter="15d91749-5c7f-4add-9620-6ed64c0c2c6b" IdCompositionParameter="6" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="15d91749-5c7f-4add-9620-6ed64c0c2c6b" GuidSink="2b6a7869-a56e-4d0b-a188-6465ec8b7057" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|182;0|182;127|359;127|359;127" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'TRPCKLOGD', @Name = 'TRPCKLOGD', @Description = 'TRPCKLOGD', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="32cf9335-2a76-443e-9f01-fb214a6e4dcb" Id="4" Code="TRPCKLOGD" Name="TRPCKLOGD" Description="TRPCKLOGD" TagReadCount="10" TagWriteCount="10" DesignWidth="1500" DesignHeight="600" DesignLeft="150" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="6886aec0-a01f-4ff9-b8a6-70683fa5f999" Left="225" Top="170" Width="250" Height="256" IsEnabled="True" Id="3" Sequence="1" OperationEnableFlag="" IdDefinition="53" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="403b9284-a376-404d-91f0-adc42ef9b2f6" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" Left="225" Top="190" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="25807ca1-7080-4fed-af16-1302c4aedbb0" Id="548" Code="Count" Offset="" Left="225" Top="210" Width="39.6466666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a4893a85-886f-49dc-9432-9460ba5a141d" Id="549" Code="CustomWD01" Offset="" Left="396.436666666667" Top="210" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="4231ccd8-9648-4980-a389-c4d3c2beaedd" Id="550" Code="CustomWD02" Offset="" Left="396.436666666667" Top="234" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1844732c-6c6b-40cc-ba84-4513038e9b13" Id="551" Code="CustomWD03" Offset="" Left="396.436666666667" Top="258" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b5242fa9-b60d-4603-aca0-8f8cbfa23ce2" Id="552" Code="CustomWD04" Offset="" Left="396.436666666667" Top="282" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a04026f2-f03e-4c06-b5c3-4a4335ad8c2c" Id="553" Code="DestZoneStatus" Offset="" Left="384.723333333333" Top="306" Width="90.2766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="77f62779-252f-4eb4-86f5-b0eefa1b1208" Id="554" Code="Direction" Offset="5" Left="225" Top="234" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="91389852-3026-4288-b7c8-dde458bdc783" Id="555" Code="idTrackingWR" Offset="" Left="396.323333333333" Top="330" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e8eb15cc-5355-440a-ba37-4ed1a45b8e36" Id="556" Code="ItemStatus" Offset="" Left="408.906666666667" Top="354" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0934074b-6be7-4d15-8b23-82f78f367599" Id="557" Code="result" Offset="" Left="436.556666666667" Top="378" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="6a5adf49-655f-44c9-a5d8-6e5372bac887" Id="558" Code="SourceZoneStatus" Offset="" Left="372.87" Top="402" Width="102.13" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" Left="709" Top="353" Width="250" Height="136" IsEnabled="True" Id="4" Sequence="2" OperationEnableFlag="" IdDefinition="33" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="5d1ad9dc-64df-446e-9451-6a65c56e76d3" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" Left="709" Top="373" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a0f4bcfb-282a-4349-9c20-6bbdb80fca13" Id="330" Code="changeProduct" Offset="" Left="709" Top="393" Width="84.13" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ab7499a7-b2eb-4ea3-a1d7-1c5b3b908359" Id="331" Code="idTracking" Offset="" Left="709" Top="417" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="74c06361-5e96-444a-9062-475f5cd6f38b" Id="332" Code="lockRequest" Offset="" Left="888.486666666667" Top="393" Width="70.5133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b7f08f60-c307-4851-bc8b-96baf79f5212" Id="333" Code="productChanged" Offset="" Left="866.666666666667" Top="417" Width="92.3333333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="050a8b14-a389-4a5f-9e98-491445be76ef" Id="334" Code="result" Offset="" Left="920.556666666667" Top="441" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="dcb329df-104e-406f-84c9-4d5b3c1c85d2" Id="335" Code="toByPass" Offset="" Left="903.76" Top="465" Width="55.24" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="dd239acc-6cab-4493-b186-8ea3ff2b8ef2" Id="336" Code="validateProduct" Offset="" Left="709" Top="441" Width="87.6166666666667" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="9206f740-b3f3-43f0-870f-3ac06bdc1bf7" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" Left="815" Top="167" Width="250" Height="112" IsEnabled="True" Id="5" Sequence="3" OperationEnableFlag="" IdDefinition="37" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="ea10392f-e905-4b8e-b7ed-fc6a685fc970" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" Left="815" Top="187" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e42a03c2-8c1f-4013-b60d-6dc43a014112" Id="363" Code="idTracking" Offset="" Left="815" Top="207" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ac3410f9-8f5b-4e7c-8951-9ec5f373aacb" Id="364" Code="idTrackingPass" Offset="" Left="980.706666666667" Top="207" Width="84.2933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d8eab776-e228-4b87-921c-b1c7e13634bf" Id="365" Code="itemCount" Offset="" Left="815" Top="231" Width="62.0133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cabcd588-70b0-4f87-93eb-466b7d557ae1" Id="366" Code="itemStatus" Offset="" Left="815" Top="255" Width="64.6266666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="63105770-059e-4cdb-8699-337f1ea84f2f" Id="367" Code="lockRequest" Offset="" Left="994.486666666667" Top="231" Width="70.5133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f0abd1f4-0bdb-4618-92b6-308ec443afc5" Id="368" Code="result" Offset="" Left="1026.55666666667" Top="255" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="3c65b4bf-a9dd-49c2-96b2-b02495dffda4" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="f71f4208-e103-40a6-94f1-0e485d21fe1d" Left="1166" Top="210" Width="250" Height="352" IsEnabled="True" Id="6" Sequence="4" OperationEnableFlag="" IdDefinition="44" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="98776447-3fc5-46be-b854-f4ddbbc6e56d" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" Left="1166" Top="230" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9b93e048-2cbf-42dc-a37a-3a472bb837a6" Id="465" Code="CustomRD01" Offset="6" Left="1166" Top="250" Width="82.64" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f897b609-c581-48fa-a7a0-651eeface431" Id="466" Code="CustomRD02" Offset="" Left="1166" Top="274" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="f4c84c6e-7d0d-4c69-9562-c1bc5a7e0d64" Id="467" Code="CustomRD03" Offset="" Left="1166" Top="298" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9e0aa34d-c1d1-4a51-986e-f5509a5ad815" Id="468" Code="CustomRD04" Offset="" Left="1166" Top="322" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d62129a7-8e27-40c4-a09e-6060fe816de6" Id="469" Code="CustomRD05" Offset="" Left="1166" Top="346" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="3b743615-b979-4ccb-8993-8d34daed7439" Id="470" Code="CustomRD06" Offset="" Left="1166" Top="370" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="6f33228c-3124-4712-8783-0f8a3ee6020c" Id="471" Code="CustomRD07" Offset="" Left="1166" Top="394" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="93794d2b-391f-451d-927f-c7f436ee2b62" Id="472" Code="CustomRD08" Offset="" Left="1166" Top="418" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a00911f6-16e7-4e83-946d-e6e37fcc1a84" Id="473" Code="CustomRD09" Offset="" Left="1166" Top="442" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="9377522c-d1cb-431b-b10d-cd2e448e8d10" Id="474" Code="CustomRD10" Offset="" Left="1166" Top="466" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b5929812-b09d-46ca-8f4e-656b3148a11c" Id="475" Code="CustomWD01" Offset="5" Left="1329.9" Top="250" Width="86.1" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e66de111-3af4-4949-993d-23ca5fef543d" Id="476" Code="CustomWD02" Offset="" Left="1337.43666666667" Top="274" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c664b36a-1ee7-46ee-93ca-aecba0718fa7" Id="477" Code="CustomWD03" Offset="" Left="1337.43666666667" Top="298" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="23eb4b29-287b-48fa-a6b3-adec59703d99" Id="478" Code="CustomWD04" Offset="" Left="1337.43666666667" Top="322" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="86c57809-eb77-4163-85cf-48baf5902c30" Id="479" Code="CustomWD05" Offset="" Left="1337.43666666667" Top="346" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8977612f-1776-4d95-9bd6-745ac36940e3" Id="480" Code="CustomWD06" Offset="" Left="1337.43666666667" Top="370" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c60016dc-8736-423b-8120-f68996b60669" Id="481" Code="CustomWD07" Offset="" Left="1337.43666666667" Top="394" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c655c361-bb28-4e98-9e79-4de62e0a7c42" Id="482" Code="CustomWD08" Offset="" Left="1337.43666666667" Top="418" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="4030ec06-986b-4cda-bc23-c1a3fe10b313" Id="483" Code="idProductionHistory" Offset="" Left="1308.15333333333" Top="442" Width="107.846666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b1f88d98-98c9-4693-b456-62155f7caaa6" Id="484" Code="idTracking" Offset="" Left="1354.16333333333" Top="466" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8a0d64f0-786e-48c0-a01c-e0d0543eec1c" Id="485" Code="idTrackingRD" Offset="" Left="1166" Top="490" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="de2d5bf2-f58f-475e-88cf-e4ca2b9d3c71" Id="486" Code="idTrkPassRD" Offset="" Left="1166" Top="514" Width="72.4366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="66d413c5-b940-4e9e-9a97-9ce294ab4e76" Id="487" Code="IsInverted" Offset="" Left="1353.77666666667" Top="490" Width="62.2233333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e1ed3bf9-ac14-4bed-8951-967a12af29d2" Id="488" Code="ItemStatus" Offset="" Left="1349.90666666667" Top="514" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="263e2a59-64a0-4c96-a52b-326700aca2e7" Id="489" Code="result" Offset="" Left="1377.55666666667" Top="538" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="6583739f-947e-47e3-a2c5-57cad0ed46c3" Id="554" Code="Direction" Offset="5" Left="88.8266666666667" Top="240" Width="61.1733333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="6886aec0-a01f-4ff9-b8a6-70683fa5f999" GuidParameter="77f62779-252f-4eb4-86f5-b0eefa1b1208" IdCompositionParameter="1" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="77f62779-252f-4eb4-86f5-b0eefa1b1208" GuidSink="6583739f-947e-47e3-a2c5-57cad0ed46c3" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="54;0|54;0|29.5;0|29.5;6|5;6|5;6" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="9b55ef54-9672-4628-be9b-5ac3059c247f" Id="1" Left="514" Top="372" Width="134.476666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="91389852-3026-4288-b7c8-dde458bdc783" GuidSink="9b55ef54-9672-4628-be9b-5ac3059c247f" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|11.5;0|11.5;49.5|18;49.5|18;49.5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="9b55ef54-9672-4628-be9b-5ac3059c247f" GuidSink="ab7499a7-b2eb-4ea3-a1d7-1c5b3b908359" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|22.2616666666667;0|22.2616666666667;37.5|39.5233333333333;37.5|39.5233333333333;37.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="accd8e13-1946-427c-9b57-72e9eb1fb63c" Id="2" Left="604" Top="182" Width="134.476666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="91389852-3026-4288-b7c8-dde458bdc783" GuidSink="accd8e13-1946-427c-9b57-72e9eb1fb63c" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;140.5|5;140.5|56.5;140.5|56.5;0|108;0|108;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="accd8e13-1946-427c-9b57-72e9eb1fb63c" GuidSink="e42a03c2-8c1f-4013-b60d-6dc43a014112" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|30.2616666666667;0|30.2616666666667;17.5|55.5233333333333;17.5|55.5233333333333;17.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="a704dffc-ed46-48a3-8502-b7310a31dd39" Id="5" Left="814" Top="299" Width="147.666666666667" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="91389852-3026-4288-b7c8-dde458bdc783" GuidSink="a704dffc-ed46-48a3-8502-b7310a31dd39" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;23.5|5;23.5|161.5;23.5|161.5;0|318;0|318;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="a704dffc-ed46-48a3-8502-b7310a31dd39" GuidSink="8a0d64f0-786e-48c0-a01c-e0d0543eec1c" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|94.1666666666667;0|94.1666666666667;183.5|183.333333333333;183.5|183.333333333333;183.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="493486fd-534e-4db1-9bbc-b983a6f8f324" Id="8" Code="CHECK_MODE_SETTER" Name="CHECK_MODE_SETTER" Description="CHECK_MODE_SETTER" ValueUri="plugin://Tenaris.Manager.Handshake.CheckModeParameterSetter, Tenaris.Manager.Handshake" Left="425.401069518717" Top="494" Width="139.836666666667" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="493486fd-534e-4db1-9bbc-b983a6f8f324" GuidSink="dd239acc-6cab-4493-b186-8ea3ff2b8ef2" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;63.2916666666667|5;63.2916666666667|63.8811319073084;63.2916666666667|63.8811319073084;0|122.762263814617;0|122.762263814617;0" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="4a5a6708-21ce-40bb-a74f-1c7e0c7b25e8" Id="9" Code="NEGATED_CHECK_MODE_SETTER" Name="NEGATED_CHECK_MODE_SETTER" Description="NEGATED_CHECK_MODE_SETTER" ValueUri="plugin://Tenaris.Manager.Handshake.NegatedCheckModeParameterSetter, Tenaris.Manager.Handshake" Left="389.401069518717" Top="451" Width="205.763333333333" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="4a5a6708-21ce-40bb-a74f-1c7e0c7b25e8" GuidSink="a0f4bcfb-282a-4349-9c20-6bbdb80fca13" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;68.2916666666667|5;68.2916666666667|48.9177985739751;68.2916666666667|48.9177985739751;0|92.8355971479501;0|92.8355971479501;0" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnablePredicateViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnablePredicateViewModel Guid="6a8ce43f-54bb-4a01-a16a-ea38a033d556" Id="6" Code="NEGATED_CHECK_MODE_PREDICATE" Name="NEGATED_CHECK_MODE_PREDICATE" Description="NEGATED_CHECK_MODE_PREDICATE" ValueUri="plugin://Tenaris.Manager.Handshake.NegatedCheckModeEnablePredicate, Tenaris.Manager.Handshake" Left="530.401069518717" Top="119" Width="228.283333333333" Height="30.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="6a8ce43f-54bb-4a01-a16a-ea38a033d556" GuidSink="ea10392f-e905-4b8e-b7ed-fc6a685fc970" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|20.157798573975;0|20.157798573975;60.2083333333333|35.31559714795;60.2083333333333|35.31559714795;60.2083333333333" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="aa22a1d5-feef-49ee-8b4b-4becab61dfd8" Id="465" Code="CustomRD01" Offset="6" Left="67.36" Top="528" Width="82.64" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" GuidParameter="9b93e048-2cbf-42dc-a37a-3a472bb837a6" IdCompositionParameter="2" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="9b93e048-2cbf-42dc-a37a-3a472bb837a6" GuidSink="aa22a1d5-feef-49ee-8b4b-4becab61dfd8" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="995;0|995;279.5|5;279.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.PlcParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <PlcParameterViewModel Guid="2b308f10-8bbe-4e40-9a9f-e95ef7191c0f" Id="475" Code="CustomWD01" Offset="5" Left="1650" Top="264" Width="86.1" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="f71f4208-e103-40a6-94f1-0e485d21fe1d" GuidParameter="b5929812-b09d-46ca-8f4e-656b3148a11c" IdCompositionParameter="3" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="b5929812-b09d-46ca-8f4e-656b3148a11c" GuidSink="2b308f10-8bbe-4e40-9a9f-e95ef7191c0f" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|109;0|109;14|213;14|213;14" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    EXEC [Handshake].[DoConfigDefineComposition] @Code = 'TRTRGDCKLO', @Name = 'TRTRGDCKLO', @Description = 'TRTRGDCKLO', @TagReadCount = 10, @TagWriteCount = 10, @Diagram = '<?xml version="1.0" encoding="utf-16"?>
<CompositionDiagramViewModel Id="0" Code="COMP_DIA1" Name="Composition Diagram" Description="">
  <DiagramItems>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.CompositionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <CompositionViewModel Guid="d66e7f4e-fa34-4550-951f-ac59c2345f04" Id="6" Code="TRTRGDCKLO" Name="TRTRGDCKLO" Description="TRTRGDCKLO" TagReadCount="10" TagWriteCount="10" DesignWidth="1500" DesignHeight="1000" DesignLeft="400" DesignTop="50" IsEnabled="False" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" Left="493.021390374332" Top="196" Width="250" Height="256" IsEnabled="True" Id="9" Sequence="1" OperationEnableFlag="9" IdDefinition="53" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="51f7ddd1-8c79-4064-805f-2e2972d2c8f3" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" Left="493.021390374332" Top="216" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="3a810181-430f-45e9-a0f8-dbeae708f096" Id="548" Code="Count" Offset="" Left="493.021390374332" Top="236" Width="39.6466666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c450132c-0c96-4dc2-bf15-4f31f2cd68ad" Id="549" Code="CustomWD01" Offset="" Left="664.458057040998" Top="236" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d657c5dd-60c5-4357-a473-cdd02236f172" Id="550" Code="CustomWD02" Offset="" Left="664.458057040998" Top="260" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5bd46dfe-bbeb-420c-9fe1-ffe0a22ed434" Id="551" Code="CustomWD03" Offset="" Left="664.458057040998" Top="284" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8a599ad8-ca51-4a03-b358-818432497412" Id="552" Code="CustomWD04" Offset="" Left="664.458057040998" Top="308" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="57a138ba-0715-4fc7-9e83-79e97bfb3477" Id="553" Code="DestZoneStatus" Offset="" Left="652.744723707665" Top="332" Width="90.2766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c2855b62-ec95-45e1-80d3-b53c11f2d55f" Id="554" Code="Direction" Offset="" Left="493.021390374332" Top="260" Width="54.9633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1a2afab5-a3d4-4c6c-94db-e41950353643" Id="555" Code="idTrackingWR" Offset="" Left="664.344723707665" Top="356" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="7d3a08fb-e628-48cd-99e6-9b8ad2002bbb" Id="556" Code="ItemStatus" Offset="" Left="676.928057040998" Top="380" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d179d192-7b33-40ba-8d45-f7d5b142a075" Id="557" Code="result" Offset="" Left="704.578057040998" Top="404" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="4a374648-3535-4180-adc5-6f6210f3d64b" Id="558" Code="SourceZoneStatus" Offset="" Left="640.891390374332" Top="428" Width="102.13" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="05cfb8ba-9cc2-48f2-8737-87f27f3289e5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" Left="790.021390374332" Top="241" Width="250" Height="256" IsEnabled="True" Id="10" Sequence="2" OperationEnableFlag="8" IdDefinition="53" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="e2ee2462-c482-4b89-a8f6-bc5ab93b6a03" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" Left="790.021390374332" Top="261" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e0d673c0-3ee3-4400-a33c-0e0566a09782" Id="548" Code="Count" Offset="" Left="790.021390374332" Top="281" Width="39.6466666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="bd1a2e08-724a-498b-9d4c-878f772e12ac" Id="549" Code="CustomWD01" Offset="" Left="961.458057040998" Top="281" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="39303a5a-8c9d-4d45-8fdd-e38159d06177" Id="550" Code="CustomWD02" Offset="" Left="961.458057040998" Top="305" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0b147ec4-1313-4187-b865-f5d7886dd13d" Id="551" Code="CustomWD03" Offset="" Left="961.458057040998" Top="329" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c302f724-564d-4932-8bb8-f2a50939a010" Id="552" Code="CustomWD04" Offset="" Left="961.458057040998" Top="353" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="01b3131f-403b-419f-b666-5a72cd3bcec4" Id="553" Code="DestZoneStatus" Offset="" Left="949.744723707665" Top="377" Width="90.2766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8d8e6aff-8f50-49af-bcce-286b15bb62f8" Id="554" Code="Direction" Offset="" Left="790.021390374332" Top="305" Width="54.9633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="372df781-69ac-440e-91c7-f89f99d8e432" Id="555" Code="idTrackingWR" Offset="" Left="961.344723707665" Top="401" Width="78.6766666666667" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="6d8017c8-310f-4626-9ccc-946e1845a7d8" Id="556" Code="ItemStatus" Offset="" Left="973.928057040998" Top="425" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8fd46d03-abd1-40c9-a072-055c323096de" Id="557" Code="result" Offset="" Left="1001.578057041" Top="449" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a149ec51-adc9-40c1-a129-daeb3bb11d1e" Id="558" Code="SourceZoneStatus" Offset="" Left="937.891390374332" Top="473" Width="102.13" Height="15" IsEnabled="True" CodeDefinition="TrkTransfer" GuidDefinition="42b289f3-b4f4-4d94-a17d-9cef438fd5ad" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="1c3f69c2-4b84-4342-b28a-54f31075035e" Left="1125" Top="190" Width="250" Height="352" IsEnabled="True" Id="11" Sequence="3" OperationEnableFlag="" IdDefinition="44" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="c9b1f8bb-44c1-4757-b109-26aea8522a14" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" Left="1125" Top="210" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e0f587c1-89e5-491d-b231-d9908fb8a3d0" Id="465" Code="CustomRD01" Offset="" Left="1125" Top="230" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cef0bce7-6645-4fee-9b31-5865fd34735b" Id="466" Code="CustomRD02" Offset="" Left="1125" Top="254" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8a5789d9-0b89-4016-b98f-8b15cd594854" Id="467" Code="CustomRD03" Offset="" Left="1125" Top="278" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="a490cb1f-6b8c-42d4-8c5e-c5c1d55ed1c5" Id="468" Code="CustomRD04" Offset="" Left="1125" Top="302" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="bebe2523-6471-4efa-8833-270f083f7736" Id="469" Code="CustomRD05" Offset="" Left="1125" Top="326" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ad08cfb0-a85a-403e-8037-2b1e1a1204ab" Id="470" Code="CustomRD06" Offset="" Left="1125" Top="350" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b10a3823-e3e5-445f-a3e4-af90113eaf91" Id="471" Code="CustomRD07" Offset="" Left="1125" Top="374" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="264c0c89-b952-4580-bc7b-3dd80b50145b" Id="472" Code="CustomRD08" Offset="" Left="1125" Top="398" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="de8ec266-f898-4f1f-84e2-af2ee05b335d" Id="473" Code="CustomRD09" Offset="" Left="1125" Top="422" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="8ad51049-b55b-43cd-b608-8a4492b26e85" Id="474" Code="CustomRD10" Offset="" Left="1125" Top="446" Width="75.63" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="0dcda42b-e05e-42c8-bd38-27e1ea3a02a5" Id="475" Code="CustomWD01" Offset="" Left="1296.43666666667" Top="230" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b2e6c373-1fe0-4324-af3d-0aebf5c8481a" Id="476" Code="CustomWD02" Offset="" Left="1296.43666666667" Top="254" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1bba4e35-2a93-4a53-90a7-5f51ebdfd9aa" Id="477" Code="CustomWD03" Offset="" Left="1296.43666666667" Top="278" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="08cbb0dc-678a-4206-a466-eaf802b5b6d8" Id="478" Code="CustomWD04" Offset="" Left="1296.43666666667" Top="302" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b67f4f01-f050-4a30-b8b8-e2cbed6803fe" Id="479" Code="CustomWD05" Offset="" Left="1296.43666666667" Top="326" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="76aa302a-dfa7-4e5f-a411-9ddb7f314c8e" Id="480" Code="CustomWD06" Offset="" Left="1296.43666666667" Top="350" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="15631c33-a0f0-4763-9308-71a5976cd708" Id="481" Code="CustomWD07" Offset="" Left="1296.43666666667" Top="374" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="79f421fa-0128-4dd3-9f88-faf792176918" Id="482" Code="CustomWD08" Offset="" Left="1296.43666666667" Top="398" Width="78.5633333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c90d06e4-325c-4094-8134-8a0ab0f8488e" Id="483" Code="idProductionHistory" Offset="" Left="1267.15333333333" Top="422" Width="107.846666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="d9ca9de9-d161-4ecb-aefc-d9cc20605617" Id="484" Code="idTracking" Offset="" Left="1313.16333333333" Top="446" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="cb6d4973-77bc-4d72-b9ce-3dd8f169d110" Id="485" Code="idTrackingRD" Offset="" Left="1125" Top="470" Width="76.4966666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="80d53a10-4428-4012-8ec3-a5c86cfe3d43" Id="486" Code="idTrkPassRD" Offset="" Left="1125" Top="494" Width="72.4366666666667" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="1dc34e9b-0f64-453a-b4c6-b2b32214ac4e" Id="487" Code="IsInverted" Offset="" Left="1312.77666666667" Top="470" Width="62.2233333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="5f299c62-48f7-455f-b9f2-55b628868533" Id="488" Code="ItemStatus" Offset="" Left="1308.90666666667" Top="494" Width="66.0933333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="21ec51eb-b477-4247-a2f0-c5a1fe8a589e" Id="489" Code="result" Offset="" Left="1336.55666666667" Top="518" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="TrkGetdataExt2" GuidDefinition="1c3f69c2-4b84-4342-b28a-54f31075035e" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="f1eab433-0f26-4bbe-9385-2f3cdec52a2a" Id="8" Code="CHECK_MODE_SETTER" Name="CHECK_MODE_SETTER" Description="CHECK_MODE_SETTER" ValueUri="plugin://Tenaris.Manager.Handshake.CheckModeParameterSetter, Tenaris.Manager.Handshake" Left="968" Top="109" Width="139.836666666667" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="f1eab433-0f26-4bbe-9385-2f3cdec52a2a" GuidSink="e0f587c1-89e5-491d-b231-d9908fb8a3d0" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|5;55.3541666666667|-3.83666666666659;55.3541666666667|-3.83666666666659;110.708333333333|-3.83666666666659;110.708333333333" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" Left="1606" Top="117" Width="250" Height="136" IsEnabled="True" Id="12" Sequence="4" OperationEnableFlag="" IdDefinition="33" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="abb98d10-714d-433a-bda6-b59531761405" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" Left="1606" Top="137" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="abae5700-4822-4b92-8ebd-724229247ce3" Id="330" Code="changeProduct" Offset="" Left="1606" Top="157" Width="84.13" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="6e9eee18-ebe8-4caa-a7f8-836217686e24" Id="331" Code="idTracking" Offset="" Left="1606" Top="181" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="71b605c2-7169-4c7e-9079-d326e4deee98" Id="332" Code="lockRequest" Offset="" Left="1785.48666666667" Top="157" Width="70.5133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="97ced605-f025-46fc-a712-da9c3c0f18af" Id="333" Code="productChanged" Offset="" Left="1763.66666666667" Top="181" Width="92.3333333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="83472afb-3424-4739-a91a-91ea756263fc" Id="334" Code="result" Offset="" Left="1817.55666666667" Top="205" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="c87237fd-96c0-4680-a33c-2b2571cdbada" Id="335" Code="toByPass" Offset="" Left="1800.76" Top="229" Width="55.24" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="2decaed4-6254-4a41-9018-a2821754e4ff" Id="336" Code="validateProduct" Offset="" Left="1606" Top="205" Width="87.6166666666667" Height="15" IsEnabled="True" CodeDefinition="ProdCheckProduct" GuidDefinition="d02ccffe-842f-4d7c-be6b-d52ccbf981eb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.DefinitionViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <DefinitionViewModel Guid="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" Left="1602" Top="379" Width="250" Height="112" IsEnabled="True" Id="13" Sequence="5" OperationEnableFlag="" IdDefinition="37" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.EnableViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <EnableViewModel Guid="e152277d-99f2-48a5-8030-7c9657d59d0a" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" Left="1602" Top="399" Width="49.3866666666667" Height="15" IsEnabled="True" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="6c394ec8-5ee4-45ee-bcc0-a1ddaa29823e" Id="363" Code="idTracking" Offset="" Left="1602" Top="419" Width="61.8366666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="307f6769-e497-4ebd-88e1-27360ff72092" Id="364" Code="idTrackingPass" Offset="" Left="1767.70666666667" Top="419" Width="84.2933333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="e05b085b-0f48-4c6f-adf5-fe044603b7e0" Id="365" Code="itemCount" Offset="" Left="1602" Top="443" Width="62.0133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="b2d048bd-194f-4a69-8545-17d7016279fb" Id="366" Code="itemStatus" Offset="" Left="1602" Top="467" Width="64.6266666666667" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="ef5599ed-def2-4ca8-b5b6-a56ad3a5bf5b" Id="367" Code="lockRequest" Offset="" Left="1781.48666666667" Top="443" Width="70.5133333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterViewModel Guid="09aa14ca-1a34-4a66-be4e-84699df0533d" Id="368" Code="result" Offset="" Left="1813.55666666667" Top="467" Width="38.4433333333333" Height="15" IsEnabled="True" CodeDefinition="ProdLoad" GuidDefinition="137ff73c-7d6f-4a04-aba9-7aa68e702bdb" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="f1eab433-0f26-4bbe-9385-2f3cdec52a2a" GuidSink="2decaed4-6254-4a41-9018-a2821754e4ff" MarginLeft="0" MarginTop="-29.7916666666667" Width="NeuN" Height="NeuN" Points="5;29.7916666666667|5;0|477.163333333333;0|477.163333333333;115.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="e1fe35d1-2f03-4cee-a9bf-d773cc48480f" Id="7" Left="1426" Top="110" Width="134.373333333333" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="0dcda42b-e05e-42c8-bd38-27e1ea3a02a5" GuidSink="e1fe35d1-2f03-4cee-a9bf-d773cc48480f" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;112.5|5;112.5|17.5;112.5|17.5;0|30;0|30;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="e1fe35d1-2f03-4cee-a9bf-d773cc48480f" GuidSink="6e9eee18-ebe8-4caa-a7f8-836217686e24" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|14.8133333333333;0|14.8133333333333;63.5|24.6266666666666;63.5|24.6266666666666;63.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="651845db-c45a-4705-9b1a-9a3e010a34d8" Id="8" Left="1447" Top="129" Width="134.373333333333" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="b2e6c373-1fe0-4324-af3d-0aebf5c8481a" GuidSink="651845db-c45a-4705-9b1a-9a3e010a34d8" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;117.5|5;117.5|28;117.5|28;0|51;0|51;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="651845db-c45a-4705-9b1a-9a3e010a34d8" GuidSink="6e9eee18-ebe8-4caa-a7f8-836217686e24" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|5;22.25|3.62666666666655;22.25|3.62666666666655;44.5|3.62666666666655;44.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterSetterViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterSetterViewModel Guid="bfd7cd48-ad8b-4db4-8a58-0fc1e9317801" Id="9" Code="NEGATED_CHECK_MODE_SETTER" Name="NEGATED_CHECK_MODE_SETTER" Description="NEGATED_CHECK_MODE_SETTER" ValueUri="plugin://Tenaris.Manager.Handshake.NegatedCheckModeParameterSetter, Tenaris.Manager.Handshake" Left="1125" Top="97" Width="205.763333333333" Height="35.5833333333333" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="bfd7cd48-ad8b-4db4-8a58-0fc1e9317801" GuidSink="abae5700-4822-4b92-8ebd-724229247ce3" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|129.618333333333;0|129.618333333333;49.7083333333333|254.236666666667;49.7083333333333|254.236666666667;49.7083333333333" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="1bba4e35-2a93-4a53-90a7-5f51ebdfd9aa" GuidSink="abb98d10-714d-433a-bda6-b59531761405" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;141|5;141|107.5;141|107.5;0|210;0|210;0" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="08cbb0dc-678a-4206-a466-eaf802b5b6d8" GuidSink="e152277d-99f2-48a5-8030-7c9657d59d0a" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|105.5;0|105.5;97|206;97|206;97" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="c71b65d7-7149-46ef-82a9-cebe593909b3" Id="9" Left="1431" Top="372" Width="134.373333333333" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="0dcda42b-e05e-42c8-bd38-27e1ea3a02a5" GuidSink="c71b65d7-7149-46ef-82a9-cebe593909b3" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|20;0|20;149.5|35;149.5|35;149.5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="c71b65d7-7149-46ef-82a9-cebe593909b3" GuidSink="6c394ec8-5ee4-45ee-bcc0-a1ddaa29823e" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|10.3133333333333;0|10.3133333333333;39.5|15.6266666666666;39.5|15.6266666666666;39.5" />
    </Item>
    <Item type="Tenaris.View.HandshakeManagement.ViewModel.Components.ParameterMappingViewModel, Tenaris.View.HandshakeManagement.ViewModel, Version=4.1.0.0, Culture=neutral, PublicKeyToken=null">
      <ParameterMappingViewModel Guid="41b13ea6-8375-4dda-9a4a-086af3d856da" Id="10" Left="1415" Top="404" Width="134.373333333333" Height="30" IsEnabled="True" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="b2e6c373-1fe0-4324-af3d-0aebf5c8481a" GuidSink="41b13ea6-8375-4dda-9a4a-086af3d856da" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|12;0|12;157.5|19;157.5|19;157.5" />
    </Item>
    <Item type="DiagramDesigner.ConnectorViewModel, DiagramDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
      <ConnectorViewModel Id="0" GuidSource="41b13ea6-8375-4dda-9a4a-086af3d856da" GuidSink="6c394ec8-5ee4-45ee-bcc0-a1ddaa29823e" MarginLeft="0" MarginTop="0" Width="NeuN" Height="NeuN" Points="5;0|5;0|18.3133333333333;0|18.3133333333333;7.5|31.6266666666666;7.5|31.6266666666666;7.5" />
    </Item>
  </DiagramItems>
</CompositionDiagramViewModel>', @Active = True;
    -- End dump for table Handshake.Composition

    -- Begin dump for table Handshake.EnablePredicate
    UPDATE [Handshake].[EnablePredicate] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineEnablePredicate] @Code = 'CHECK_MODE_PREDIATE', @Name = 'CHECK_MODE_PREDIATE', @Description = 'CHECK_MODE_PREDIATE', @ValueUri = 'plugin://Tenaris.Manager.Handshake.CheckModeEnablePredicate, Tenaris.Manager.Handshake', @Active = True;
    EXEC [Handshake].[DoConfigDefineEnablePredicate] @Code = 'DIRECTION_FORWARD_ENABLE_PREDICATE', @Name = 'DIRECTION_FORWARD_ENABLE_PREDICATE', @Description = 'DIRECTION_FORWARD_ENABLE_PREDICATE', @ValueUri = 'plugin://Tenaris.Manager.Handshake.DirectionForwardEnablePredicate, Tenaris.Manager.Handshake', @Active = True;
    EXEC [Handshake].[DoConfigDefineEnablePredicate] @Code = 'NEGATED_CHECK_MODE_PREDICATE', @Name = 'NEGATED_CHECK_MODE_PREDICATE', @Description = 'NEGATED_CHECK_MODE_PREDICATE', @ValueUri = 'plugin://Tenaris.Manager.Handshake.NegatedCheckModeEnablePredicate, Tenaris.Manager.Handshake', @Active = True;
    -- End dump for table Handshake.EnablePredicate

    -- Begin dump for table Handshake.ParameterSetter
    UPDATE [Handshake].[ParameterSetter] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'CHECK_MODE_SETTER', @Name = 'CHECK_MODE_SETTER', @Description = 'CHECK_MODE_SETTER', @ValueUri = 'plugin://Tenaris.Manager.Handshake.CheckModeParameterSetter, Tenaris.Manager.Handshake', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'NEGATED_CHECK_MODE_SETTER', @Name = 'NEGATED_CHECK_MODE_SETTER', @Description = 'NEGATED_CHECK_MODE_SETTER', @ValueUri = 'plugin://Tenaris.Manager.Handshake.NegatedCheckModeParameterSetter, Tenaris.Manager.Handshake', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'VALUE_SETTER_0', @Name = 'VALUE_SETTER_0', @Description = 'VALUE_SETTER_0', @ValueUri = 'value://0', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'VALUE_SETTER_1', @Name = 'VALUE_SETTER_1', @Description = 'VALUE_SETTER_1', @ValueUri = 'value://1', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'VALUE_SETTER_2', @Name = 'VALUE_SETTER_2', @Description = 'VALUE_SETTER_2', @ValueUri = 'value://2', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'VALUE_SETTER_3', @Name = 'VALUE_SETTER_3', @Description = 'VALUE_SETTER_3', @ValueUri = 'value://3', @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterSetter] @Code = 'VALUE_SETTER_4', @Name = 'VALUE_SETTER_4', @Description = 'VALUE_SETTER_4', @ValueUri = 'value://4', @Active = True;
    -- End dump for table Handshake.ParameterSetter

    -- Begin dump for table Handshake.Definition
    UPDATE [Handshake].[Definition] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'DiagnosticManager', @Code = 'DiagPresenceSensor', @Name = 'DiagPresenceSensor', @Description = 'DiagPresenceSensor', @ExecutionOrder = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdChangeProduct', @Name = 'ProdChangeProduct', @Description = 'ProdChangeProduct', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdCheckProduct', @Name = 'Production CheckProduct', @Description = 'Production CheckProduct Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdChPrLoad', @Name = 'ProdChPrLoad', @Description = 'Production CheckProduct&Load Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdChPrLoadCount', @Name = 'ProdChPrLoadCount', @Description = 'Production CheckProduct&Load&Count Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdCount', @Name = 'ProdCount', @Description = 'Production Count Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdLoad', @Name = 'ProdLoad', @Description = 'Production Load Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'ProdLoadCount', @Name = 'ProdLoadCount', @Description = 'Production Load&Count Handshake', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkCheck', @Name = 'Check', @Description = 'Check', @ExecutionOrder = null, @Active = True;
	EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkCheckDynamic', @Name = 'Check Dynamic', @Description = 'Check Dynamic', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkCloneAll', @Name = 'TrkCloneAll', @Description = 'TrkCloneAll', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkCreate', @Name = 'Create', @Description = 'Create', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkGetdata', @Name = 'GetData', @Description = 'GetData always invokes SpGetData ', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkGetdataExt', @Name = 'GetDataExt', @Description = 'GetDataExt always invokes SpGetData ', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkGetdataExt2', @Name = 'GetDataExt2', @Description = 'GetDataExt2 return data from manager memory', @ExecutionOrder = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkMaskedShift', @Name = 'Masked Shift', @Description = 'Masked Shift', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkMaskedShiftFull', @Name = 'Masked Shift Also Full', @Description = 'Masked shift Also Full', @ExecutionOrder = 1, @Active = True;
	EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkSetAttributes', @Name = 'TrkSetAttributes', @Description = 'Set attribute(s) to tracking', @ExecutionOrder = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShift', @Name = 'Shift', @Description = 'Shift', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShiftAlsoFull', @Name = 'Shift Also Full', @Description = 'Shift Also Full', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShiftAlsoFullTrs', @Name = 'Shift Also Full And Transfer', @Description = 'Shift Also Full And Transfer', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShiftTemplate', @Name = 'Shift Template', @Description = 'Shift Template', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShiftTemplFull', @Name = 'Shift Template Also Full', @Description = 'Shift Template Also Full', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkShiftTransfer', @Name = 'Shift and Transfer', @Description = 'Shift and Transfer', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransfer', @Name = 'Transfer', @Description = 'Transfer', @ExecutionOrder = 1, @Active = True;
	EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransferDynamic', @Name = 'Transfer Dynamic', @Description = 'Transfer Dynamic', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransferIfAvail', @Name = 'TrkTransferIfAvail', @Description = 'Transfer If source is Available', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransferShift', @Name = 'Transfer and Shift', @Description = 'Transfer and Shift', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransferTransfer', @Name = 'Transfer Transfer', @Description = 'Transfer Transfer', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransFirstAvail', @Name = 'Transfer First Available', @Description = 'Transfer First Available', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransFirstAvShift', @Name = 'Transfer First Available and Shift', @Description = 'Transfer First Available and Shift', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransMaskedShift', @Name = 'Transfer and Masked Shift', @Description = 'Transfer and Masked Shift', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrkTransShiftTrans', @Name = 'Transfer Shift Transfer', @Description = 'Transfer Shift Transfer', @ExecutionOrder = 1, @Active = True;
    EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'VdiManager', @Code = 'VdiInspection', @Name = 'VdiInspection', @Description = 'Vdi Inspection Request', @ExecutionOrder = null, @Active = True;
	EXEC [Handshake].[DoConfigDefineDefinition] @ApplicationCode = 'TDAManager', @Code = 'TDAHandshake', @Name = 'TDAHandshake', @Description = 'Tda acquisition handshake ', @ExecutionOrder = null, @Active = True;
    -- End dump for table Handshake.Definition

    -- Begin dump for table Handshake.Parameter
    UPDATE [Handshake].[Parameter] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'changeProduct', @Name = 'changeProduct', @Description = 'changeProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'idBatch', @Name = 'idBatch', @Description = 'idBatch', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'productChanged', @Name = 'productChanged', @Description = 'productChanged', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'toByPass', @Name = 'toByPass', @Description = 'toByPass', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChangeProduct', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'validateProduct', @Name = 'validateProduct', @Description = 'validateProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'changeProduct', @Name = 'changeProduct', @Description = 'changeProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'productChanged', @Name = 'productChanged', @Description = 'productChanged', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = null, @EguCode = null, @Code = 'toByPass', @Name = 'toByPass', @Description = 'toByPass', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCheckProduct', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'validateProduct', @Name = 'validateProduct', @Description = 'validateProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'changeProduct', @Name = 'changeProduct', @Description = 'changeProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingPass', @Name = 'idTrackingPass', @Description = 'idTrackingPass', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemCount', @Name = 'itemCount', @Description = 'itemCount', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = 'VALUE_SETTER_4', @EguCode = null, @Code = 'itemStatus', @Name = 'itemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'productChanged', @Name = 'productChanged', @Description = 'productChanged', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'toByPass', @Name = 'toByPass', @Description = 'toByPass', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoad', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'validateProduct', @Name = 'validateProduct', @Description = 'validateProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'changeProduct', @Name = 'changeProduct', @Description = 'changeProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingPass', @Name = 'idTrackingPass', @Description = 'idTrackingPass', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemCount', @Name = 'itemCount', @Description = 'itemCount', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemStatus', @Name = 'itemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'productChanged', @Name = 'productChanged', @Description = 'productChanged', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'toByPass', @Name = 'toByPass', @Description = 'toByPass', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'validateProduct', @Name = 'validateProduct', @Description = 'validateProduct', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdChPrLoadCount', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'workTime', @Name = 'workTime', @Description = 'workTime', @IsReadParameter = True, @Size = 2, @Precision = 1, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingPass', @Name = 'idTrackingPass', @Description = 'idTrackingPass', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemCount', @Name = 'itemCount', @Description = 'itemCount', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemStatus', @Name = 'itemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdCount', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'workTime', @Name = 'workTime', @Description = 'workTime', @IsReadParameter = True, @Size = 2, @Precision = 1, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingPass', @Name = 'idTrackingPass', @Description = 'idTrackingPass', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemCount', @Name = 'itemCount', @Description = 'itemCount', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = 'VALUE_SETTER_4', @EguCode = null, @Code = 'itemStatus', @Name = 'itemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoad', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingPass', @Name = 'idTrackingPass', @Description = 'idTrackingPass', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemCount', @Name = 'itemCount', @Description = 'itemCount', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'itemStatus', @Name = 'itemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'lockRequest', @Name = 'lockRequest', @Description = 'lockRequest', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'ProdLoadCount', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'workTime', @Name = 'workTime', @Description = 'workTime', @IsReadParameter = True, @Size = 2, @Precision = 1, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheck', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Direction', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DynamicPosition', @Name = 'DynamicPosition', @Description = 'DynamicPosition', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DynamicZonePlcCode', @Name = 'DynamicZonePlcCode', @Description = 'DynamicZonePlcCode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'ItemStatus 1=Good 2=Scrap 3=warned 4=standard', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCheckDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCloneAll', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD01', @Name = 'CustomRD01', @Description = 'CustomRD01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD02', @Name = 'CustomRD02', @Description = 'CustomRD02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD03', @Name = 'CustomRD03', @Description = 'CustomRD03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD04', @Name = 'CustomRD04', @Description = 'CustomRD04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD05', @Name = 'CustomRD05', @Description = 'CustomRD05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD06', @Name = 'CustomRD06', @Description = 'CustomRD06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD05', @Name = 'CustomWD05', @Description = 'CustomWD05', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD06', @Name = 'CustomWD06', @Description = 'CustomWD06', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD07', @Name = 'CustomWD07', @Description = 'CustomWD07', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTracking Read', @Description = 'IdTracking Read', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkCreate', @ParameterSetterCode = 'VALUE_SETTER_3', @EguCode = null, @Code = 'TrackingType', @Name = 'TrackingType', @Description = 'TrackingType', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD01', @Name = 'CustomRD01', @Description = 'CustomRD01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD02', @Name = 'CustomRD02', @Description = 'CustomRD02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD03', @Name = 'CustomRD03', @Description = 'CustomRD03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD04', @Name = 'CustomRD04', @Description = 'CustomRD04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD05', @Name = 'CustomRD05', @Description = 'CustomRD05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD05', @Name = 'CustomWD05', @Description = 'CustomWD05', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD06', @Name = 'CustomWD06', @Description = 'CustomWD06', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTracking Read', @Description = 'IdTracking Read', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrkPassRD', @Name = 'idTrkPass Read', @Description = 'IdTrkPass Read', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdata', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD01', @Name = 'CustomRD01', @Description = 'CustomRD01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD02', @Name = 'CustomRD02', @Description = 'CustomRD02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD03', @Name = 'CustomRD03', @Description = 'CustomRD03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD04', @Name = 'CustomRD04', @Description = 'CustomRD04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD05', @Name = 'CustomRD05', @Description = 'CustomRD05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD06', @Name = 'CustomRD06', @Description = 'CustomRD06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD07', @Name = 'CustomRD07', @Description = 'CustomRD07', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD08', @Name = 'CustomRD08', @Description = 'CustomRD08', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD09', @Name = 'CustomRD09', @Description = 'CustomRD09', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD10', @Name = 'CustomRD10', @Description = 'CustomRD10', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD11', @Name = 'CustomRD11', @Description = 'CustomRD11', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD12', @Name = 'CustomRD12', @Description = 'CustomRD12', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD13', @Name = 'CustomRD13', @Description = 'CustomRD13', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD14', @Name = 'CustomRD14', @Description = 'CustomRD14', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomRD15', @Name = 'CustomRD15', @Description = 'CustomRD15', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD05', @Name = 'CustomWD05', @Description = 'CustomWD05', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD06', @Name = 'CustomWD06', @Description = 'CustomWD06', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD07', @Name = 'CustomWD07', @Description = 'CustomWD07', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD08', @Name = 'CustomWD08', @Description = 'CustomWD08', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD09', @Name = 'CustomWD09', @Description = 'CustomWD09', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD10', @Name = 'CustomWD10', @Description = 'CustomWD10', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD11', @Name = 'CustomWD11', @Description = 'CustomWD11', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD12', @Name = 'CustomWD12', @Description = 'CustomWD12', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD13', @Name = 'CustomWD13', @Description = 'CustomWD13', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD14', @Name = 'CustomWD14', @Description = 'CustomWD14', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD15', @Name = 'CustomWD15', @Description = 'CustomWD15', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD16', @Name = 'CustomWD16', @Description = 'CustomWD16', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTracking Read', @Description = 'IdTracking Read', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrkPassRD', @Name = 'idTrkPass Read', @Description = 'IdTrkPass Read', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD01', @Name = 'CustomRD01', @Description = 'CustomRD01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD02', @Name = 'CustomRD02', @Description = 'CustomRD02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD03', @Name = 'CustomRD03', @Description = 'CustomRD03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD04', @Name = 'CustomRD04', @Description = 'CustomRD04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD05', @Name = 'CustomRD05', @Description = 'CustomRD05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD06', @Name = 'CustomRD06', @Description = 'CustomRD06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD07', @Name = 'CustomRD07', @Description = 'CustomRD07', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD08', @Name = 'CustomRD08', @Description = 'CustomRD08', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD09', @Name = 'CustomRD09', @Description = 'CustomRD09', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD10', @Name = 'CustomRD10', @Description = 'CustomRD10', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD05', @Name = 'CustomWD05', @Description = 'CustomWD05', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD06', @Name = 'CustomWD06', @Description = 'CustomWD06', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD07', @Name = 'CustomWD07', @Description = 'CustomWD07', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD08', @Name = 'CustomWD08', @Description = 'CustomWD08', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'idProductionHistory', @Name = 'idProductionHistory', @Description = 'idProductionHistory', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTracking', @Name = 'idTracking', @Description = 'idTracking', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTrackingRD', @Description = 'idTrackingRD', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrkPassRD', @Name = 'idTrkPassRD', @Description = 'idTrkPassRD', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'IsInverted', @Name = 'IsInverted', @Description = 'IsInverted', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkGetdataExt2', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask01', @Name = 'Mask01', @Description = 'Mask01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask02', @Name = 'Mask02', @Description = 'Mask02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask03', @Name = 'Mask03', @Description = 'Mask03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask04', @Name = 'Mask04', @Description = 'Mask04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask05', @Name = 'Mask05', @Description = 'Mask05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask06', @Name = 'Mask06', @Description = 'Mask06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask01', @Name = 'Mask01', @Description = 'Mask01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask02', @Name = 'Mask02', @Description = 'Mask02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask03', @Name = 'Mask03', @Description = 'Mask03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask04', @Name = 'Mask04', @Description = 'Mask04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask05', @Name = 'Mask05', @Description = 'Mask05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask06', @Name = 'Mask06', @Description = 'Mask06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkMaskedShiftFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD01', @Name = 'CustomRD01', @Description = 'CustomRD01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD02', @Name = 'CustomRD02', @Description = 'CustomRD02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD03', @Name = 'CustomRD03', @Description = 'CustomRD03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD04', @Name = 'CustomRD04', @Description = 'CustomRD04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD05', @Name = 'CustomRD05', @Description = 'CustomRD05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD06', @Name = 'CustomRD06', @Description = 'CustomRD06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD07', @Name = 'CustomRD07', @Description = 'CustomRD07', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD08', @Name = 'CustomRD08', @Description = 'CustomRD08', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD09', @Name = 'CustomRD09', @Description = 'CustomRD09', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD10', @Name = 'CustomRD10', @Description = 'CustomRD10', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTrackingRD', @Description = 'idTrackingRD', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkSetAttributes', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShift', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShift', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFull', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFull', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftAlsoFullTrs', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplate', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplate', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplate', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplate', @ParameterSetterCode = null, @EguCode = null, @Code = 'Template', @Name = 'Template', @Description = 'Template (Optional)', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTemplFull', @ParameterSetterCode = null, @EguCode = null, @Code = 'Template', @Name = 'Template', @Description = 'Template (Optional)', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkShiftTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Direction', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DynamicPosition', @Name = 'DynamicPosition', @Description = 'DynamicPosition', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'DynamicZonePlcCode', @Name = 'DynamicZonePlcCode', @Description = 'DynamicZonePlcCode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'ItemStatus 1=Good 2=Scrap 3=warned 4=standard', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferDynamic', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = 'VALUE_SETTER_1', @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'result', @Description = 'result', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferIfAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransferTransfer', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvail', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransFirstAvShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count of pipes to transfer', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemPresence', @Name = 'ItemPresence', @Description = 'ItemPresence 0=Not present 1=Present 2= Unknown', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask01', @Name = 'Mask01', @Description = 'Mask01', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask02', @Name = 'Mask02', @Description = 'Mask02', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask03', @Name = 'Mask03', @Description = 'Mask03', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask04', @Name = 'Mask04', @Description = 'Mask04', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask05', @Name = 'Mask05', @Description = 'Mask05', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mask06', @Name = 'Mask06', @Description = 'Mask06', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransMaskedShift', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'Count', @Name = 'Count', @Description = 'Count', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD01', @Name = 'CustomWD01', @Description = 'CustomWD01', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD02', @Name = 'CustomWD02', @Description = 'CustomWD02', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD03', @Name = 'CustomWD03', @Description = 'CustomWD03', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'CustomWD04', @Name = 'CustomWD04', @Description = 'CustomWD04', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'DestZoneStatus', @Name = 'DestZoneStatus', @Description = 'DestZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'Direction', @Name = 'Direction', @Description = 'Mover tubo hacia ADELANTE=0, Mover tubo hacia ATRAS=1', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'idTrackingWR', @Name = 'idTracking Write', @Description = 'IdTracking Write', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'ItemStatus', @Name = 'ItemStatus', @Description = 'Tubo BUENO=1, Tubo rechazado=2, Tubo OBSERVADO=3, Tubo pendiente=4', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'Mode', @Name = 'Mode', @Description = 'Handshake mode', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'result', @Name = 'RetryResponse', @Description = 'Retry and Response  word', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TrkTransShiftTrans', @ParameterSetterCode = null, @EguCode = null, @Code = 'SourceZoneStatus', @Name = 'SourceZoneStatus', @Description = 'SourceZoneStatus -1=Unknown 0=Loadable 1=Not loadable ', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'VdiInspection', @ParameterSetterCode = null, @EguCode = null, @Code = 'IdInspection', @Name = 'Vdi_IdInspection', @Description = 'Vdi_IdInspection', @IsReadParameter = False, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'VdiInspection', @ParameterSetterCode = null, @EguCode = null, @Code = 'IdTracking', @Name = 'Vdi_IdTracking', @Description = 'Vdi Inspection Rq idTracking', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'VdiInspection', @ParameterSetterCode = null, @EguCode = null, @Code = 'IdTrackingPass', @Name = 'Vdi_IdTrackingPass', @Description = 'Vdi Inspection Rq idTrackingPass', @IsReadParameter = True, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'VdiInspection', @ParameterSetterCode = null, @EguCode = null, @Code = 'StationStatus', @Name = 'Vdi_StationStatus', @Description = 'Vdi StationStatus', @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'VdiInspection', @ParameterSetterCode = null, @EguCode = null, @Code = 'Trigger', @Name = 'Vdi_Trigger', @Description = 'VDI Inspection Rq Trigger', @IsReadParameter = True, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = null,             @EguCode = null, @Code = 'result',       @Name = 'result',       @Description = 'result',       @IsReadParameter = False, @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrackingRD', @Name = 'idTrackingRD', @Description = 'idTrackingRD', @IsReadParameter = True,  @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'idTrkPassRD',  @Name = 'idTrkPassRD',  @Description = 'idTrkPassRD',  @IsReadParameter = True,  @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD01',   @Name = 'CustomRD01',   @Description = 'CustomRD01',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD02',   @Name = 'CustomRD02',   @Description = 'CustomRD02',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD03',   @Name = 'CustomRD03',   @Description = 'CustomRD03',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD04',   @Name = 'CustomRD04',   @Description = 'CustomRD04',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD05',   @Name = 'CustomRD05',   @Description = 'CustomRD05',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD06',   @Name = 'CustomRD06',   @Description = 'CustomRD06',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD07',   @Name = 'CustomRD07',   @Description = 'CustomRD07',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD08',   @Name = 'CustomRD08',   @Description = 'CustomRD08',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD09',   @Name = 'CustomRD09',   @Description = 'CustomRD09',   @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
	EXEC [Handshake].[DoConfigDefineParameter] @DefinitionCode = 'TDAHandshake', @ParameterSetterCode = 'VALUE_SETTER_0', @EguCode = null, @Code = 'CustomRD10	', @Name = 'CustomRD10',   @Description = 'CustomRD10',	  @IsReadParameter = True,  @Size = 1, @Precision = 0, @Bias = 0, @Active = True;
    -- End dump for table Handshake.Parameter

    -- Begin dump for table Handshake.HandshakeComposition
    -- UPDATE [Handshake].[HandshakeComposition] SET [Active] = 'False';
    -- End dump for table Handshake.HandshakeComposition

    -- Begin dump for table Handshake.CompositionDefinition
    UPDATE [Handshake].[CompositionDefinition] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'CR', @DefinitionCode = 'TrkCreate', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'GDCN', @DefinitionCode = 'TrkGetdataExt2', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'GDCN', @DefinitionCode = 'ProdCount', @Sequence = 2, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'GDVDI', @DefinitionCode = 'TrkGetdataExt2', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'GDVDI', @DefinitionCode = 'VdiInspection', @Sequence = 2, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'LDCN', @DefinitionCode = 'ProdLoadCount', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TR', @DefinitionCode = 'TrkTransfer', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRGD', @DefinitionCode = 'TrkTransfer', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRGD', @DefinitionCode = 'TrkGetdataExt2', @Sequence = 2, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRPCKLOGD', @DefinitionCode = 'TrkTransfer', @Sequence = 1, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRPCKLOGD', @DefinitionCode = 'ProdCheckProduct', @Sequence = 2, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRPCKLOGD', @DefinitionCode = 'ProdLoad', @Sequence = 3, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = 'NEGATED_CHECK_MODE_PREDICATE', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRPCKLOGD', @DefinitionCode = 'TrkGetdataExt2', @Sequence = 4, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRTRGDCKLO', @DefinitionCode = 'TrkTransfer', @Sequence = 1, @OperationEnableFlag = 9, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRTRGDCKLO', @DefinitionCode = 'TrkTransfer', @Sequence = 2, @OperationEnableFlag = 8, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRTRGDCKLO', @DefinitionCode = 'TrkGetdataExt2', @Sequence = 3, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRTRGDCKLO', @DefinitionCode = 'ProdCheckProduct', @Sequence = 4, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionDefinition] @CompositionCode = 'TRTRGDCKLO', @DefinitionCode = 'ProdLoad', @Sequence = 5, @OperationEnableFlag = null, @EnableCompositionDefinitionCompositionCode = null, @EnableCompositionDefinitionSequence = null, @EnableParameterDefinitionCode = null, @EnableParameterCode = null, @EnablePredicateCode = null, @Active = True;
    -- End dump for table Handshake.CompositionDefinition

    -- Begin dump for table Handshake.CompositionParameter
    UPDATE [Handshake].[CompositionParameter] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'GDCN', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'ProdCount', @ParameterCode = 'workTime', @Offset = 6, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'GDVDI', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'VdiInspection', @ParameterCode = 'IdInspection', @Offset = 6, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'GDVDI', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'VdiInspection', @ParameterCode = 'StationStatus', @Offset = 5, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TR', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'TrkTransfer', @ParameterCode = 'Direction', @Offset = 5, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRGD', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'TrkTransfer', @ParameterCode = 'Direction', @Offset = 5, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRGD', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'TrkGetdataExt2', @ParameterCode = 'CustomRD01', @Offset = 7, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRGD', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'TrkGetdataExt2', @ParameterCode = 'CustomWD01', @Offset = 5, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRPCKLOGD', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'TrkTransfer', @ParameterCode = 'Direction', @Offset = 5, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRPCKLOGD', @CompositionDefinitionSequence = 4, @ParameterDefinitionCode = 'TrkGetdataExt2', @ParameterCode = 'CustomRD01', @Offset = 6, @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameter] @CompositionDefinitionCompositionCode = 'TRPCKLOGD', @CompositionDefinitionSequence = 4, @ParameterDefinitionCode = 'TrkGetdataExt2', @ParameterCode = 'CustomWD01', @Offset = 5, @Active = True;
    -- End dump for table Handshake.CompositionParameter

    -- Begin dump for table Handshake.CompositionParameterSetter
    UPDATE [Handshake].[CompositionParameterSetter] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'GDVDI', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'VdiInspection', @ParameterCode = 'IdTrackingPass', @ParameterSetterCode = 'VALUE_SETTER_0', @Active = True;
	EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'GDVDI', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'VdiInspection', @ParameterCode = 'Trigger', @ParameterSetterCode = 'VALUE_SETTER_1', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'LDCN', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'ProdLoadCount', @ParameterCode = 'idTracking', @ParameterSetterCode = 'VALUE_SETTER_0', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'LDCN', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'ProdLoadCount', @ParameterCode = 'itemCount', @ParameterSetterCode = 'VALUE_SETTER_1', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'LDCN', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'ProdLoadCount', @ParameterCode = 'itemStatus', @ParameterSetterCode = 'VALUE_SETTER_1', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'LDCN', @CompositionDefinitionSequence = 1, @ParameterDefinitionCode = 'ProdLoadCount', @ParameterCode = 'workTime', @ParameterSetterCode = 'VALUE_SETTER_0', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'TRPCKLOGD', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'ProdCheckProduct', @ParameterCode = 'changeProduct', @ParameterSetterCode = 'NEGATED_CHECK_MODE_SETTER', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'TRPCKLOGD', @CompositionDefinitionSequence = 2, @ParameterDefinitionCode = 'ProdCheckProduct', @ParameterCode = 'validateProduct', @ParameterSetterCode = 'CHECK_MODE_SETTER', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'TRTRGDCKLO', @CompositionDefinitionSequence = 3, @ParameterDefinitionCode = 'TrkGetdataExt2', @ParameterCode = 'CustomRD01', @ParameterSetterCode = 'CHECK_MODE_SETTER', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'TRTRGDCKLO', @CompositionDefinitionSequence = 4, @ParameterDefinitionCode = 'ProdCheckProduct', @ParameterCode = 'changeProduct', @ParameterSetterCode = 'NEGATED_CHECK_MODE_SETTER', @Active = True;
    EXEC [Handshake].[DoConfigDefineCompositionParameterSetter] @CompositionDefinitionCompositionCode = 'TRTRGDCKLO', @CompositionDefinitionSequence = 4, @ParameterDefinitionCode = 'ProdCheckProduct', @ParameterCode = 'validateProduct', @ParameterSetterCode = 'CHECK_MODE_SETTER', @Active = True;
    -- End dump for table Handshake.CompositionParameterSetter

    -- Begin dump for table Handshake.Handshake
    -- UPDATE [Handshake].[Handshake] SET [Active] = 'False';
    -- End dump for table Handshake.Handshake

    -- Begin dump for table Handshake.ParameterMapping
    UPDATE [Handshake].[ParameterMapping] SET [Active] = 'False';
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'GDCN', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD01', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'GDCN', @DestinationCompositionDefinitionSequence = 2, @DestinationParameterDefinitionCode = 'ProdCount', @DestinationParameterCode = 'idTrackingPass', @DestinationOffset = 1, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'GDCN', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD02', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'GDCN', @DestinationCompositionDefinitionSequence = 2, @DestinationParameterDefinitionCode = 'ProdCount', @DestinationParameterCode = 'idTrackingPass', @DestinationOffset = 0, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'GDVDI', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'idTracking', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'GDVDI', @DestinationCompositionDefinitionSequence = 2, @DestinationParameterDefinitionCode = 'VdiInspection', @DestinationParameterCode = 'IdTracking', @DestinationOffset = null, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRGD', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkTransfer', @SourceParameterCode = 'idTrackingWR', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRGD', @DestinationCompositionDefinitionSequence = 2, @DestinationParameterDefinitionCode = 'TrkGetdataExt2', @DestinationParameterCode = 'idTrackingRD', @DestinationOffset = null, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRPCKLOGD', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkTransfer', @SourceParameterCode = 'idTrackingWR', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRPCKLOGD', @DestinationCompositionDefinitionSequence = 2, @DestinationParameterDefinitionCode = 'ProdCheckProduct', @DestinationParameterCode = 'idTracking', @DestinationOffset = null, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRPCKLOGD', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkTransfer', @SourceParameterCode = 'idTrackingWR', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRPCKLOGD', @DestinationCompositionDefinitionSequence = 3, @DestinationParameterDefinitionCode = 'ProdLoad', @DestinationParameterCode = 'idTracking', @DestinationOffset = null, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRPCKLOGD', @SourceCompositionDefinitionSequence = 1, @SourceParameterDefinitionCode = 'TrkTransfer', @SourceParameterCode = 'idTrackingWR', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRPCKLOGD', @DestinationCompositionDefinitionSequence = 4, @DestinationParameterDefinitionCode = 'TrkGetdataExt2', @DestinationParameterCode = 'idTrackingRD', @DestinationOffset = null, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @SourceCompositionDefinitionSequence = 3, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD01', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @DestinationCompositionDefinitionSequence = 4, @DestinationParameterDefinitionCode = 'ProdCheckProduct', @DestinationParameterCode = 'idTracking', @DestinationOffset = 1, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @SourceCompositionDefinitionSequence = 3, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD01', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @DestinationCompositionDefinitionSequence = 5, @DestinationParameterDefinitionCode = 'ProdLoad', @DestinationParameterCode = 'idTracking', @DestinationOffset = 1, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @SourceCompositionDefinitionSequence = 3, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD02', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @DestinationCompositionDefinitionSequence = 4, @DestinationParameterDefinitionCode = 'ProdCheckProduct', @DestinationParameterCode = 'idTracking', @DestinationOffset = 0, @DestinationBitOffset = null, @Active = True;
    EXEC [Handshake].[DoConfigDefineParameterMapping] @SourceCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @SourceCompositionDefinitionSequence = 3, @SourceParameterDefinitionCode = 'TrkGetdataExt2', @SourceParameterCode = 'CustomWD02', @SourceOffset = null, @SourceBitOffset = null, @DestinationCompositionDefinitionCompositionCode = 'TRTRGDCKLO', @DestinationCompositionDefinitionSequence = 5, @DestinationParameterDefinitionCode = 'ProdLoad', @DestinationParameterCode = 'idTracking', @DestinationOffset = 0, @DestinationBitOffset = null, @Active = True;
    -- End dump for table Handshake.ParameterMapping

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState ,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;

    IF @TC > 0 AND XACT_STATE() = 1
        COMMIT TRANSACTION;
    IF @TC = 0
        ROLLBACK TRANSACTION;
END CATCH;
