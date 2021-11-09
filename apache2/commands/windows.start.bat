@echo off

set LOCAL_PATH=C:\Users\fabri\Documents\linux\devdockers\apache\www
set CONTAINER_PATH=/var/www/html
set IP=172.50.50.90

docker stop apache
docker rm apache

echo "Criando o container"
docker run --name apache --net devnetwork^
 --ip %IP% -p 80:80^
 --mount "type=bind,source=%LOCAL_PATH%,target=%CONTAINER_PATH%"^
 -d fabriciojf/apache:1.2

echo "Docker Containers"
docker ps