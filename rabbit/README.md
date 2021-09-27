# RabbitMQ Docker

RabbitMQ docker-compose

## Creating the Network

```console
docker network create --subnet=172.50.50.0/16 devnetwork
```

## Execution

Para subir o container utilize o comando abaixo, dentro da pasta ./rabbit

```console
docker-compose up -d
```

Localize o container de nome ***rabbit***

## SSL

* docker-compose: [https://github.com/docker-library/rabbitmq/issues/115](https://github.com/docker-library/rabbitmq/issues/115)
* Dockerfile: [https://github.com/roboconf/rabbitmq-with-ssl-in-docker/blob/master/Dockerfile](https://github.com/roboconf/rabbitmq-with-ssl-in-docker/blob/master/Dockerfile)

## Author

* Fabricio Costa fabriciojf@gmail.com
