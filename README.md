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
cd project_common
docker-compose up jupyter
docker-compose up -d
docker-compose stop
```
other commands
```bash
docker-compose -f up -d --remove-orphans

docker-compose stop webapps
docker-compose rm
docker-compose up -d webapps

docker-compose logs webapps
docker-compose up -d --build webapps

docker-compose ps
docker-compose images

docker rmi nginx
docker ps
docker attach 8f5000b5df47
docker exec -it d07161590a12 bash

docker ps -f "status=exited"
docker logs --tail=50 <container id>
```
