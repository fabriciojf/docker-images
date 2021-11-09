#!/bin/bash

docker rm portal
docker build -t fabriciojf/portal .

docker run --name portal --net devnetwork --ip 172.50.50.90 \
    -p 80:80 \
    -d fabriciojf/portal