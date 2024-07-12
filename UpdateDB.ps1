$server = "localhost"
$database = "TmTbHtrIta16"

Set-Location -Path database.config -Passthru
Write-DatabaseConfigDump -ServerInstance $server -Database $database
read-host "Press ENTER to EXIT..."
