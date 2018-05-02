# Build an imange from Dockerfile and run
```
$ cd app
$ docker build -t mttrs/app .
$ docker run --rm -it -p 8080:8080 mttrs/app
```

# [Logs](https://docs.docker.com/engine/reference/commandline/logs/)
```
$ docker logs [OPTIONS] CONTAINER

# Tailing logs
$ docker logs xxx -ft
```

# Stop container
```
# List running containers: https://docs.docker.com/engine/reference/commandline/ps/
$ docker ps -q
xxx

# Stop: https://docs.docker.com/engine/reference/commandline/stop/
$ docker stop xxx
```

# Start stopped continers
```
$ docker start CONTAINER
```

# Attach local stdin, stdout, and stderr streams to a running container
```
$ docker attach CONTAINER
```

# Run a command in a running container
```
$ docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

# Delete all containers
`$ docker rm -f $(docker ps -a -q)`

# Delete all images
`$ docker rmi -f $(docker images -q)`


# [Install shell completion](https://docs.docker.com/docker-for-mac/#install-shell-completion)
Zsh  
In Zsh, the completion system takes care of things. To activate completion for Docker commands, these files need to be copied or symlinked to your Zsh site-functions/ directory. For example, if you installed Zsh via Homebrew:
```
$ etc=/Applications/Docker.app/Contents/Resources/etc
$ ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
$ ln -s $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
$ ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose
```
