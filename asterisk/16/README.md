# asterisk

Asterisk 16 Dockerfile

## Using the image

```console
mkdir ~/dockers
cd ~/dockers
git clone https://github.com/fabriciojf/docker-images.git
cd docker-images/asterisk/16
```

## Creating the Network

```console
docker network create --subnet=172.50.50.0/16 devnetwork
```

## Building

```console
docker build -t fabriciojf/asterisk:16 .
```

## Running

```console
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
  -d fabriciojf/asterisk:16
```
