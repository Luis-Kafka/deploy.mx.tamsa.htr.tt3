Try
{
    [void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
    $title = 'Cambiar nombre de server SQL'
    $msg   = 'Instancia SQL Server actual:'

    [string]$currentServerTemp = Select-String -Path "Template.ini" -Pattern 'FORUMHOST_IP'
    $currentServerTemp = $currentServerTemp.Substring($currentServerTemp.IndexOf('=') + 2, $currentServerTemp.Length - $currentServerTemp.IndexOf('=') - 2)
    $currentServer = ''
    $currentServer = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title, $currentServerTemp)

    "Current server = " + $currentServer

    if(!$currentServer.Equals(''))
    {
        $msg   = 'Nueva instancia SQL Server:'
        [string]$newServer = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)
    
        if($newServer.Equals(''))
        {
            exit
        }

        "New server = " + $newServer

        #-----------------
        #I've tryed a lot of ways to do that. The current one is awful, but it was the onlt one I found to resolve a text replace in a proper way. Don't like powershell, too tricky :P
        #-----------------

        Get-ChildItem .\ -Filter *.Config -Recurse -Force -File | where {$_.FullName -like "*application*Tenaris*" -and $_.FullName -notlike '*template*' } | ForEach {
            
            $file = [System.IO.File]::ReadAllText($_.FullName)
            if($file.Contains($currentServer))
            {
                "Processing " + $_.FullName + "..."
                $content = $file.Replace($currentServer,$newServer)
                [System.IO.File]::WriteAllText($_.FullName, $content)
            }
        }

        Get-ChildItem .\  -Recurse -Force -File | where {$_.FullName -like "*database*.sql" -and $_.FullName -notlike '*template*'} | ForEach {
            $file = [System.IO.File]::ReadAllText($_.FullName)
            $cont = $file.Contains($currentServer)
            if($file.Contains($currentServer))
            {
                "Processing " + $_.FullName + "..."
                $content = $file.Replace($currentServer,$newServer) 
                [System.IO.File]::WriteAllText($_.FullName, $content)
            }
        }
    }
}
Catch
{
	$ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
	$ErrorMessage
    read-host “Press ENTER to continue...”
}
