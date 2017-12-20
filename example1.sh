#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 2
#doitlive alias: edit="nano "

# docker run is a command to run a container.
# ubuntu is the image you run, for example, the Ubuntu operating system image. When you specify an image, Docker looks first for the image on your Docker host. If the image does not exist locally, then the image is pulled from the public image registry — Docker Hub.
# /bin/echo 'Hello world' is the command that will run inside a new container. This container simply prints Hello world and stops the execution.
docker run ubuntu /bin/echo 'Hello world'

# Let’s try to create an interactive shell inside Docker container:
docker run -i -t --rm ubuntu /bin/bash
# -t flag assigns a pseudo-tty or terminal inside the new container.
# -i flag allows you to make an interactive connection by grabbing the standard input (STDIN) of the container.
# --rm flag to automatically remove the container when the process exits. By default, containers are not deleted. This container exists until we keep the shell session and terminates when we exit from the session (like SSH session to a remote server).

# If you want to keep container running after the end of the session, you need to daemonize it:
# 
docker run --name daemon -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"

# Let’s see what containers we have at the moment:
docker ps -a
# docker ps is a command to list containers.
# -a shows all containers (without -a flag ps will show only running containers).

# Let’s check the logs and see what daemon container is doing right now:
docker logs daemon
# docker logs fetches the logs of a container.
# -f flag to follow the log output (works actually like tail -f).

# Now let’s stop daemon container:
docker stop daemon

#Make sure that the container has stopped.
docker ps -a

# The container is stopped. We can start it again:
docker start daemon

# Let’s ensure that it is running:
docker ps -a

# Now, stop it again and remove all the containers manually:
docker stop daemon