Try
{
	if (Test-Path "package.nuspec_") 
	{
		Write-Host "rename file package.nuspec_"
		Move-Item -Path ".\package.nuspec_" -Destination ".\package.nuspec" -Force
	}
	#CREATE LOCAL PACKAGE
	nuget pack package.nuspec

	$latestfile = Get-ChildItem -Attributes !Directory *.nupkg | Sort-Object -Descending -Property LastWriteTime | select -First 1		
	$nameNoVersion = $latestfile.BaseName -replace '.(\d+(\.\d+){1,3})', ''
	
	#CREATE FOLDER 
	Set-Variable -Name "SubFolderName" -Value "Desktop" -Option constant
	New-Item "C:\Proyectos\TT3\DeployTemplate\Entry\HTR_MX\v2.0\TT3\$SubFolderName\" -ItemType Directory
	
	# DELETE OLD NUPKG AND FOLDERS
    $cmdDeleteForum = "Remove-Item -path C:\Proyectos\TT3\DeployTemplate\Entry\HTR_MX\v2.0\TT3\$SubFolderName\ -Recurse "
	invoke-Expression  $cmdDeleteForum 
	$cmdDeleteNuget = "remove-item -fo C:\Proyectos\TT3\DeployTemplate\Entry\HTR_MX\v2.0\TT3\$SubFolderName\"
	invoke-Expression $cmdDeleteNuget
	
	# INSTALL FORUM
	$cmd = "Install-L2Application -id " + $nameNoVersion  + " -InstallDirectory C:\Proyectos\TT3\DeployTemplate\Entry\HTR_MX\v2.0\TT3\$SubFolderName\"	
	invoke-Expression $cmd
	
	#MOVE LOCAL NUPKG TO _out 
	Get-ChildItem -Path .\ -Include *.nupkg -Recurse | Move-Item -Destination C:\Proyectos\TT3\DeployTemplate\Entry\HTR_MX\v2.0\TT3\$SubFolderName\ | ForEach-Object -Process {$_.FullName}
}
Catch
{
	$ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
	$ErrorMessage
    read-host "Press ENTER to continue..."
}

