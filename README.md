Common repository for The Sound of AI Open Source Research and instructions for running the end-to-end pipeline.

# Dependencies
## Csound
* Csound https://csound.com/
* latest version should run, tested version in this project is `6.16.2`
* https://github.com/csound/csound/releases/tag/6.16.2
* install .exe 
* or unzip .zip version in a folder that is added to the system path

On MacOs, if homebrew is installed, the setup script will install Csound automatically.

## Python
* Python version 3.8 is to be used
* in case python 3.8 available on the system but not the default one then use `setup3.8.bat` instead of `setup.bat`

# Setup and Run
⚠️ `setup` may take several minutes
## windows
Three out of four modules (STT, SG, Prod) run natively in python virtual environments. TTS requires linux, so the setup script creates a docker container.

```
git clone --recurse-submodules https://github.com/TheSoundOfAIOSR/project_common.git
cd project_common
setup.bat
run.bat
rg_production\venv\Scripts\python rg_production\main.py
```

## Mac
```
git clone --recurse-submodules https://github.com/TheSoundOfAIOSR/project_common.git
cd project_common
bash setup_mac.sh
bash run_mac.sh
```

## update

if already cloned without `--recurse-submodule`
```bash
cd project_common
git submodule update --init --recursive
```
further updates
```bash
git pull --recurse-submodules
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
