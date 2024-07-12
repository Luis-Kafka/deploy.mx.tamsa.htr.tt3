$server = "$DBN2_SOURCE"
$database = "$DBN2_NAME"

Set-Location -Path database.config -Passthru
Write-DatabaseConfigDump -ServerInstance $server -Database $database
read-host "Press ENTER to EXIT..."
