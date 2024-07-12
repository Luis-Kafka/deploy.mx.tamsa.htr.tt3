$server = "localhost"
$database = "TmTbHtrIta16"

Read-DatabaseConfigDump -ServerInstance $server -Database $database -OutputDirectory .\database.config -NoBackup -Force -OnlyActive

read-host "Press ENTER to EXIT..."
