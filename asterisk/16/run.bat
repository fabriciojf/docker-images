@echo off

set AST_IMAGE=fabriciojf/asterisk:16

echo "removendo a maquina asterisk"

docker stop asterisk
docker rm asterisk

echo "criando o container asterisk"

docker run --name asterisk -p 5060:5060/udp ^
  -p 10000-10010:10000-10010/udp ^
  -p 5038:5038/udp ^
  -p 5038:5038/tcp ^
  -p 8088:8088/tcp ^
  -p 8088:8088/udp ^
  --net devnetwork ^
  --ip 172.50.50.50 ^
  --mount "type=volume,source=asterisk-confs,target=/etc/asterisk" ^
  --mount "type=volume,source=asterisk-agi-bin,target=/usr/share/asterisk/agi-bin" ^
  --mount "type=volume,source=asterisk-moh,target=/usr/share/asterisk/moh" ^
  --mount "type=volume,source=asterisk-sounds,target=/usr/share/asterisk/sounds" ^
  -d %AST_IMAGE%

echo "listando os containers"

docker ps
