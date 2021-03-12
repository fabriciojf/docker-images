# mongo

Dockerfile para imagem Mongodb

## Utilizando a imagem

Clone o projeto em uma pasta de sua preferência. Ex:

```console
$ cd /opt
$ git clone https://github.com/fabriciojf/docker-images.git
$ cd docker-images
```

Entre na pasta da imagem:

```console
$ cd mongo
```

Realizando o build da imagem, não se esqueça do . (ponto) no final do comando:

```console
$ docker build -t fabriciojf/mongo .
```

Subindo o container:

```console
$ docker container --name mongodb run -d fabriciojf/mongo
```

Vendo os containers em execução:

```console
$ docker container ps -a
```

Logando no terminal do container:

```console
$ docker exec -it mongodb /bin/sh
```

Parando o container:

```console
$ docker container stop mongodb
```

Iniciando o container:

```console
$ docker container start mongodb
```