#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 4
#doitlive alias: edit="nano "

docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)
docker volume prune
# docker rm is command to remove container.
# -f flag (for rm) is to stop container if it's running (force deletion).
# -q flag (for ps) is to print only container IDs.