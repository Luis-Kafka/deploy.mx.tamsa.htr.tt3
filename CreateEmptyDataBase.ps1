#=================================================================================
# Designed to deploy a database from a dacpac
#=================================================================================

[CmdletBinding()]
Param(
    
    #SQLPackage
    # This directory for sqlpackage is specific to SQL Server 160 (v16).  download installer: https://aka.ms/dacfx-msi  or zip: https://go.microsoft.com/fwlink/?linkid=2224909
    [Parameter(Mandatory=$false)]
    [string]$sqlPackageFileName = ".\.temp\SqlPackage\Microsoft.SqlPackage.161.8089.0\tools\net6.0\any\sqlpackage.exe",
	
    #DacPac source
    #Note PSScriptRoot is the location where this script is called from. Good idea to keep it in the root of 
    # your solution then the absolute path is easy to reconstruct
    [Parameter(Mandatory=$false)]
    [string]$sourceFile = """$PSScriptRoot\database.structure\source\database\Custom.Schema\bin\Debug\Tenaris.Database.L2.Custom.Schema.dacpac""",
	
	[Parameter(Mandatory=$false)]
    [string]$profileFile = """$PSScriptRoot\database.structure\source\database\Custom.Schema\Custom.Schema.publish.xml"""
)

& "$(Split-Path $MyInvocation.MyCommand.Path)/InstallSQLPackage.ps1"

& "$sqlPackageFileName" ` /Action:Publish ` /SourceFile:$sourceFile ` /Profile:$profileFile `

read-host "Press ENTER to exit..."
