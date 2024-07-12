param($InstallDirectory, $AppData)

Move-Item $InstallDirectory\Binaries\Tenaris.View.Desktop.exe $InstallDirectory -Force
Move-Item $InstallDirectory\Binaries\Tenaris.Library.Shell.exe $InstallDirectory -Force