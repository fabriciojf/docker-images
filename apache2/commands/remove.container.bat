@echo off

docker stop apache
docker rm apache

docker ps -a