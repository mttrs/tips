# [Install shell completion](https://docs.docker.com/docker-for-mac/#install-shell-completion)
Zsh  
In Zsh, the completion system takes care of things. To activate completion for Docker commands, these files need to be copied or symlinked to your Zsh site-functions/ directory. For example, if you installed Zsh via Homebrew:
```
etc=/Applications/Docker.app/Contents/Resources/etc
ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -s $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose
```



# Delete all containers
`docker rm -f $(docker ps -a -q)`

# Delete all images
`docker rmi -f $(docker images -q)`
