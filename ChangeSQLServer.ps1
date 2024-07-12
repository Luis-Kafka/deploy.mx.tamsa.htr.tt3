Try
{
    [void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
    $title = 'Cambiar nombre de server SQL'
    $msg   = 'Instancia SQL Server actual:'

    [string]$currentServerTemp = Select-String -Path "Template.ini" -Pattern 'DBN2_SOURCE'
    $currentServerTemp = $currentServerTemp.Substring($currentServerTemp.IndexOf('=') + 2, $currentServerTemp.Length - $currentServerTemp.IndexOf('=') - 2)
    $currentServer = ''
    $currentServer = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title, $currentServerTemp)
    

    if(!$currentServer.Equals(''))
    {
        $msg   = 'Nueva instancia SQL Server:'
        [string]$newServer = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)
    
		if($newServer.Equals(''))
        {
            exit
        }
		
        #-----------------
        #I've tryed a lot of ways to do that. The current one is awful, but it was the onlt one I found to resolve a text replace in a proper way. Not like powershell, too tricky :P
        #-----------------

        Get-ChildItem .\ -Filter ConnectionStrings.Config -Recurse -Force -File | where {$_.FullName -like "*application*" -and $_.FullName -notlike '*template*' } | ForEach {
            "Processing" + $_.FullName + "..."
            $content = [System.IO.File]::ReadAllText($_.FullName).Replace($currentServer,$newServer) 
            [System.IO.File]::WriteAllText($_.FullName, $content)
        }

        Get-ChildItem .\ -Filter "*.ps1" -Recurse -Force -File | where {$_.FullName -like "*database*" -and $_.FullName -notlike '*template*'} | ForEach {
            "Processing" + $_.FullName + "..."
            $content = [System.IO.File]::ReadAllText($_.FullName).Replace($currentServer,$newServer) 
            [System.IO.File]::WriteAllText($_.FullName, $content)
        }

        Get-ChildItem .\ -Filter "*.scmp" -Recurse -Force -File | where {$_.FullName -like "*database*" -and $_.FullName -notlike '*template*'} | ForEach {
            "Processing" + $_.FullName + "..."
            $content = [System.IO.File]::ReadAllText($_.FullName).Replace($currentServer,$newServer) 
            [System.IO.File]::WriteAllText($_.FullName, $content)
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
