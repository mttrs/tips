## Cheat sheet
https://github.com/wsargent/docker-cheat-sheet

## Build an imange from Dockerfile and run
```
$ cd app
$ docker build -t mttrs/app .
$ docker run --rm -it -p 8080:8080 mttrs/app
```

## [Logs](https://docs.docker.com/engine/reference/commandline/logs/)
```
$ docker logs [OPTIONS] CONTAINER

# Tailing logs
$ docker logs xxx -ft
```

## Stop container
```
# List running containers: https://docs.docker.com/engine/reference/commandline/ps/
$ docker ps -q
xxx

# Stop: https://docs.docker.com/engine/reference/commandline/stop/
$ docker stop xxx
```

## Start stopped continers
```
$ docker start CONTAINER
```

## Attach local stdin, stdout, and stderr streams to a running container
```
$ docker attach CONTAINER
```

## Run a command in a running container
```
$ docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

## Remove unused images
```
docker image prune [OPTIONS]
```

## Delete all containers
```
$ docker rm -f $(docker ps -a -q)
```

## Delete all images
```
$ docker rmi -f $(docker images -q)
```

## Delete old docker-compose image
```
$ docker-compose rm
```
When you use this command? "No such image" error happens when `docker-compose up`.  
Ref: https://stackoverflow.com/questions/37454548/docker-compose-no-such-image  


## [Install shell completion](https://docs.docker.com/docker-for-mac/#install-shell-completion)
Zsh  
In Zsh, the completion system takes care of things. To activate completion for Docker commands, these files need to be copied or symlinked to your Zsh site-functions/ directory. For example, if you installed Zsh via Homebrew:
```
$ etc=/Applications/Docker.app/Contents/Resources/etc
$ ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
$ ln -s $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
$ ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose
```

## PostgreSQL
- Run a postgres container
```
$ docker run --name my-pg -p 5432:5432 -e POSTGRES_USER=mttrs -e POSTGRES_PASSWORD=xxx -d postgres:latest
```
- Connect to the postgres container
```
# With docker command
$ docker exec -it my-pg psql -U mttrs

# With psql command
$ psql -h localhost -U mttrs
```
