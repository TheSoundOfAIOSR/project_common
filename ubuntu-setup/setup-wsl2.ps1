$wlsAppxFile = "ubuntu-setup\Ubuntu-20.04.appx"
$rootfsDir = "ubuntu-setup\rootfs"
$wslDestDir = "WSL"
$rootfsArchive = "install.tar.gz"
$rootfsFull = "$rootfsDir\$rootfsArchive"

if (!(Test-Path $rootfsDir)) {
    mkdir $rootfsDir
}
if (!(Test-Path $wlsAppxFile) -and !(Test-Path $rootfsFull)) {
    Write-Host "Downloading $wlsAppxFile from https://aka.ms/wslubuntu2004 ..."
    Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile $wlsAppxFile -UseBasicParsing
}

if ((Test-Path $wlsAppxFile) -and !(Test-Path $rootfsFull)) {
    Write-Host "Unpacking $rootfsArchive from $wlsAppxFile into $rootfsDir ..."
    .\ubuntu-setup\7z\7za.exe e -r "$wlsAppxFile" "$rootfsArchive" -o"$rootfsDir" 
}

if (!(Test-Path $wslDestDir)) {
    mkdir $wslDestDir
}

Write-Host "Importing rootfs from $rootfsFull and register MusicAI instance ..."
wsl --import MusicAI "$wslDestDir\MusicAI" $rootfsFull

# we cannot make sure that the .sh files below will always be commited from linux,
# the windows end of line character is always replaced during injecting in bash

Write-Host "Initial ubuntu user setup ..."
wsl -d MusicAI bash -c -i "tr '\r\n' '\n' < ubuntu-setup/initial-ubuntu-user.sh | bash"

# restart the instance in order to make default user active
Write-Host "Restarting MusicAI instance ..."
wsl --shutdown MusicAI

Write-Host "Configuring pulseaudio client in ~/.bashrc ..."
wsl -d MusicAI bash -c -i "tr '\r\n' '\n' < ubuntu-setup/configure_pulseaudio.sh | bash"

Write-Host "Restarting MusicAI instance ..."
wsl --shutdown MusicAI

# from here is the area for user specific environment setup
wsl -d MusicAI
