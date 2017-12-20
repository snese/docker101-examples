#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 2
#doitlive alias: edit="nano "

cat ./app/Dockerfile

cat ./app/requirements.txt

cat ./docker-compose.yml

docker-compose --project-name app-test -f docker-compose.yml up -d

open -a Safari http://127.0.0.1:5000/

docker volume ls