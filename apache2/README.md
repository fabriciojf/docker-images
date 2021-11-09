# Apache 2

## Docker Build

```console
$ docker build -t fabriciojf/apache .
```

## Docker Network (Create)

```console
$ docker network create --subnet=172.50.50.0/16 devnetwork
```

## Docker Run

```console
$ docker run --name apache --net devnetwork --ip 172.50.50.90
   -p 180:80
   -d fabriciojf/apache
```
