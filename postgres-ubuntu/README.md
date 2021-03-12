# postgres-ubuntu

Dockerfile para imagem Postgres em sistema operacional ubuntu:14.04.

## Utilizando a imagem

Clone o projeto em uma pasta de sua preferência. Ex:

```console
$ cd /opt
$ git clone https://github.com/fabriciojf/docker-images.git
$ cd docker-images
```

Entre na pasta da imagem:

```console
$ cd postgres-ubuntu
```

Realizando o build da imagem, não se esqueça do . (ponto) no final do comando:

```console
$ docker build -t fabriciojf/postgres .
```

Subindo o container:

```console
$ docker container --name postgresdb run -d fabriciojf/postgres
```

Vendo os containers em execução:

```console
$ docker container ps -a
```

Logando no terminal do container:

```console
$ docker exec -it postgresdb /bin/bash
```

Parando o container:

```console
$ docker container stop postgresdb
```

Iniciando o container:

```console
$ docker container start postgresdb
```