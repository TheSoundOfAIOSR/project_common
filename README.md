# project_common
Common environment for all groups to connect to other groups with a relative path

# Install
## repo preparation
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
## install dependencies
* if your default `python` version is matching the version 3.8
```bash
cd project_common
setup.bat
```
* if your default `python` version is different then either change it or use `python3.8` if available
```bash
cd project_common
setup3.8.bat
```

# Run
```bash
cd project_common
run.bat
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
