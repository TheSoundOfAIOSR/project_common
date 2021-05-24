# Open Source Research Pipeline
Common repository for The Sound of AI Open Source Research and instructions for running the end-to-end pipeline. Setups for OSX, Windows, and Linux (tbd) are listed here.

## Global Requirements
Csound https://csound.com/download.html

On MacOs, if homebrew is installed, the setup script will install Csound automatically.

Python 3.8

## First Step (All OS)

```bash
git clone --recurse-submodules https://github.com/TheSoundOfAIOSR/project_common.git
```

if already cloned without `--recurse-submodule`
```bash
cd project_common
git submodule update --init --recursive
```

update
```bash
git pull --recurse-submodules
```

## Setup/Run - Windows
Three out of four modules (STT, SG, Prod) run natively in python virtual environments. TTS requires linux, so the setup script creates a docker container.
```
setup.bat
run.bat
rg_production\venv\Scripts\python main_rgws.py
```

## Setup/Run - Mac
```
bash setup_mac.sh
bash run_mac.sh
```

## Setup/Run - Linux
```
TBD. Try the mac installation.
```

# Utils
## docker compose
start stop 
```bash
alias dc=docker-compose
cd project_common
dc up jupyter
dc up -d
dc stop jupyter
dc build --force-rm jupyter
```
other commands
```bash
dc -f up -d --remove-orphans

dc stop webapps
dc rm
dc up -d webapps

dc logs webapps
dc up -d --build webapps

dc ps
dc images

docker rmi nginx
docker ps
docker attach 8f5000b5df47
docker exec -it d07161590a12 bash

docker ps -f "status=exited"
docker logs --tail=50 <container id>
```
