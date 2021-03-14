# project_common
Common environment for all groups to connect to other groups with a relative path

# How To
## git
```bash
git clone --recurse-submodules https://github.com/TheSoundOfAIOSR/project_common.git
```

if already cloned without `--recurse-submodule`
```bash
cd project_common
git submodule update --init --recursive
```
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
