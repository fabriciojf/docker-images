@echo off

echo "Parando o Nagios, caso esteja UP"
docker-compose down

echo "Removendo volumes previamente criados"
docker volume ls -f name=nagios
docker volume rm ^
    nagios_nagios-conf ^
    nagios_nagios-db-data ^
    nagios_nagios-eample ^
    nagios_nagios-plugin ^
    nagios_nagios_db_data
docker volume ls -f name=nagios

echo "Reiniciando o Nagios"
docker-compose up -d
