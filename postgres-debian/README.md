# Utilizando a imagem

Clone o projeto em uma pasta de sua preferência. Ex:

```console
$ cd /opt
$ git clone https://github.com/fabriciojf/docker-images.git
$ cd docker-images
```

Entre na pasta da imagem:

```console
$ cd postgres-debian
```

Realizando o build da imagem:

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