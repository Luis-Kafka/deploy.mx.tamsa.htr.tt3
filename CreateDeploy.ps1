
function Build-DatabaseProject
{
    param
    (
        [parameter(Mandatory=$true)]
        [String] $path,

        [parameter(Mandatory=$false)]
        [bool] $nuget = $true,
        
        [parameter(Mandatory=$false)]
        [bool] $clean = $true
    )
    process
    {
        $msBuildExe = 'C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe'

        if ($nuget) {
            Write-Host "Restoring NuGet packages" -foregroundcolor green
            nuget restore "$($path)"
        }

        if ($clean) {
            Write-Host "Cleaning $($path)" -foregroundcolor green
            & "$($msBuildExe)" "$($path)" /t:Clean /m
        }

        Write-Host "Building $($path)" -foregroundcolor green
        & "$($msBuildExe)" "$($path)" /t:Build /m
    }
}

Try
{
	Remove-Item  "application.*" -Force -Recurse -ErrorAction Stop
	Remove-Item  "database.*" -Force -Recurse -ErrorAction Stop
	Copy-Item -Path .\template\* -Destination .\ -Force -Recurse -Exclude *.ini -ErrorAction Stop

	$nuspecfiles = Get-ChildItem -Path .\ -Recurse -Filter *.nuspec_ -ErrorAction Stop| ForEach-Object -Process {$_.FullName}
	foreach($f in $nuspecfiles)
	{
		$newName = $f.Substring(0,$f.Length-1)
		$cmd = "Rename-Item -Path '" + $f + "' -NewName '" + $newName + "' -ErrorAction Stop"
		invoke-Expression $cmd
	}
	
	.\trep.exe .\ Template.ini "sql,config,xml,nuspec,json,ps1,bat,sqlproj,xaml,scmp"
	
	Write-Host "Clean local nuget cache" -foregroundcolor green
	
	Remove-LocalNuGetResources
	
	if(Test-Path (Join-Path (Join-Path -Path .\ -ChildPath "custom") "CreateDeploy.ps1") -PathType Leaf) {
        Write-Host "CreateDeploy found in custom folder... executing" -foregroundcolor green
		& (Join-Path (Join-Path -Path .\ -ChildPath "custom") "CreateDeploy.ps1")
    }
	
	Write-Host "Start Build Database project" -foregroundcolor green
	
	Build-DatabaseProject .\database.structure\all.sln $true $true
	
	 read-host "Press ENTER to EXIT..."
	

}
Catch
{
	$ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
	$ErrorMessage
    read-host "Press ENTER to continue..."
}

