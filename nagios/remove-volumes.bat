@echo off

docker stop nagios
docker rm nagios

docker volume ls -f name=nagios

docker volume rm ^
    nagios_nagios-conf ^
    nagios_nagios-db-data ^
    nagios_nagios-eample ^
    nagios_nagios-plugin ^
    nagios_nagios_db_data

docker volume ls -f name=nagios
