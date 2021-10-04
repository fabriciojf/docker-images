# postgres-ubuntu

Dockerfile para imagem Postgres em sistema operacional ubuntu:14.04.

## Using the image

```console
mkdir ~/dockers
cd ~/dockers
git clone https://github.com/fabriciojf/docker-images.git
cd docker-images
```

## Creating the Network

```console
docker network create --subnet=172.50.50.0/16 devnetwork
```
