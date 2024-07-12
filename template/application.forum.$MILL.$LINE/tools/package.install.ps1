param($InstallDirectory, $AppData)

Copy-Item $InstallDirectory\Binaries\Tenaris.Forum.View.exe $InstallDirectory\Tenaris.Forum.View.WITHOUTSERVICE.exe -Force

Move-Item $InstallDirectory\Binaries\Tenaris.Manager.Forum.WinService.exe $InstallDirectory -Force
Move-Item $InstallDirectory\Binaries\Tenaris.Forum.View.exe $InstallDirectory -Force
Move-Item $InstallDirectory\Binaries\Tenaris.Manager.Host.exe $InstallDirectory -Force