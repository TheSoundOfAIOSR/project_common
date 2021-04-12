## Overview
This folder holds setup scripts and utilities for setting up Ubuntu-20.04-LTS 
based environments hosted as native linux boot system or hosted inside 
a WSL2 environment. The WSL2 environment is hosted in Windows 10.
This setup procedure could serve as a template for other audio projects.

### The reasoning behind mixed hosting environments.
The reason why it was mixed various hosting environment is straightforward.
As of today, the most preferred environment for working in audio with deep 
learning frameworks, is still linux. Since WSL2 environment hosted in Windows
brings a linux environment in the Windows host operating system, in practice
these two different categories of environments represents the same
environment for deploying linux based packages. Therefore the WSL2 setup scripts
justs adds the layer for making it easy to setup WSL2 linux, then it reuses 
the same bash shell scripts to install the packages, which we otherwise use
in native Ubuntu-20.04-LTS.

Since WSL2 brings the full linux environment in a Windows host, practically
creates a dual environment, which facilitates fast and easy cross-platform
compatibility verification of the software we use during the development.
Since we don't need to reboot, don't need to copy datasets, don't need to use
other phisical audio hardware, we just need to check to run the software in
both linux and native Windows environment. We can clearly identify where
are the major compatibility issues, therefore can speed-up our effort to
produce cross-platform software. The music production domain is predominantly
using Windows or Mac OS, instead of Linux. Therefore for a successful
penetration of music audio research into the professional music production 
environment, it is essential to be present at least in one of the most used
OS, beside the linux. Obviously, not everything will be multiplatform,
therefore the possibility to run linux binaries hosted in one of these
preferred operating systems by music production practicioners, it is important. 

## The setup procedure
Depending on your hosting operating system of choice, read the respective 
section below.

### Installing in native Ubuntu 20.04 LTS

```
#TODO
```

### Installing in WSL2 hosted in Windows 10.

For the installation phase, we must use Windows PowerShell, 
therefore, if we would like to inject this code to be called by `..\setup.bat` 
there we need to call `Powershell.exe -executionpolicy remotesigned -File .\ubuntu-setup\setup-wsl2.ps1`.
Or just install directly from this folder by opening a Windows PowerShell and executing:
```
setup-wsl2.ps1
```

The setup procedure does the following:
 - pull down a fresh official Ubuntu-20.04 LTS image optimized for WSL2 environment.
 - register the downloaded image into WSL2, using the name `MusicAI`.
 - creates a user called `ai` into the running `MusicAI` instance
 - make it `ai` user will be the default user in `MusicAI` instance.
 - creates the audio routing setup between `MusicAI` instance and Windows host.
   - within `MusicAI` instance, just adds a few lines to `~/.bashrc`.
   - in Windows host it just prepare a `pulseaudio` server ready to be used.
 - Finally, executes the exact same setup script as we need in case of native Ubuntu, 
   hence we don't have duplicated scripts to maintain for native and WSL2 linux environment.

## Using the installed softwares

### In native Ubuntu

```
```

### In WSL2

In a simple command promt, or linked into the `..\run.bat`, we only need to execute:
```

wsl -d MusicAI
```
