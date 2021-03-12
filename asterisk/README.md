# asterisk

Dockerfile para imagem Asterisk 11

## Utilizando a imagem

Clone o projeto em uma pasta de sua preferência. Ex:

```console
$ cd /opt
$ git clone https://github.com/fabriciojf/docker-images.git
$ cd docker-images
```

Entre na pasta da imagem:

```console
$ cd asterisk
```

Realizando o build da imagem, não se esqueça do . (ponto) no final do comando:

```console
$ docker build -t fabriciojf/asterisk .
```

Subindo o container:

```console
$ docker container run --name asterisk -d fabriciojf/asterisk
```

Vendo os containers em execução:

```console
$ docker container ps -a
```

Logando no terminal do container:

```console
$ docker exec -it asterisk /bin/bash
```

Parando o container:

```console
$ docker container stop asterisk
```

Iniciando o container:

```console
$ docker container start asterisk
```