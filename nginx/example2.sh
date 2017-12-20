#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 2
#doitlive alias: edit="nano "

docker run -d --name test-nginx -p 80:80 -v $(pwd):/usr/share/nginx/html:ro nginx:latest
# -p is a ports mapping HOST PORT:CONTAINER PORT.
# -v is a volume mounting HOST DIRECTORY:CONTAINER DIRECTORY.

# check the httpd
open -a Safari http://127.0.0.1

# Let’s get the information about test-nginx container:
docker inspect test-nginx