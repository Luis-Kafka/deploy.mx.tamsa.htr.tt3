$server = "$DBN2_SOURCE"
$database = "$DBN2_NAME"

Read-DatabaseConfigDump -ServerInstance $server -Database $database -OutputDirectory .\database.config -NoBackup -Force -OnlyActive

read-host "Press ENTER to EXIT..."