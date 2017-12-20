#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 2
#doitlive alias: edit="nano "

cat ./docker-compose.yml

docker-compose --project-name wordpress -f docker-compose.yml up -d

open -a Safari http://127.0.0.1:8000

docker volume ls