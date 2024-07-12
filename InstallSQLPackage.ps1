Try
{
	New-Item ".temp" -ItemType Directory
	nuget install Microsoft.SqlPackage -Version 161.8089.0 -Source http://nuget-auto.tenaris.techint.net/nuget/nuget-org/  -OutputDirectory  .\.temp\SqlPackage -NoCache
}
Catch
{
	$ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
	$ErrorMessage
    read-host “Press ENTER to continue...”
}