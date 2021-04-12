$wlsAppxFile = "ubuntu-setup\Ubuntu-20.04.appx"
$rootfsDir = "ubuntu-setup\rootfs"
$rootfsArchive = "install.tar.gz"
$rootfsFull = "$rootfsDir\$rootfsArchive"

if (!(Test-Path $rootfsDir)) {
    mkdir $rootfsDir
}
if (!(Test-Path $wlsAppxFile) -and !(Test-Path $rootfsFull)) {
    Write-Warning "Downloading $wlsAppxFile from https://aka.ms/wslubuntu2004 ..."
    Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile $wlsAppxFile -UseBasicParsing
}

if ((Test-Path $wlsAppxFile) -and !(Test-Path $rootfsFull)) {
    .\ubuntu-setup\7z\7za.exe e -r "$wlsAppxFile" "$rootfsArchive" -o"$rootfsDir" 
}

wsl --import MusicAI WSL\MusicAI $rootfsFull
wsl -d MusicAI ./ubuntu-setup/initial-ubuntu-user.sh
# restart the instance in order to make default user active
wsl --shutdown MusicAI

# from here is the area for user specific environment setup
wsl -d MusicAI
