# docker-images

Imagens docker para ambiente de desenvolvimento.

## Post Externo

* [https://site.fabriciojf.com/faq/docker_build_de_uma_imagem_asterisk](https://site.fabriciojf.com/faq/docker_build_de_uma_imagem_asterisk)

# Utilizando a imagem

Clone o projeto em uma pasta de sua preferência. Ex:

```console
$ cd /opt
$ git clone https://github.com/fabriciojf/docker-images.git
$ cd docker-images
```

Entre na imagem que deseja trabalhar. Usaremos a imagem Asterisk como exemplo:

```console
$ cd asterisk
```

Realizando o build da imagem (Não se esqueça do . (ponto) no final do comando):

```console
$ docker build -t fabriciojf/asterisk .
```
Subindo o container

```console
$ docker container --name asterisk run -d fabriciojf/asterisk
```

Vendo os containers em execução:

```console
$ docker container ps -a
```

Logando no terminal:

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