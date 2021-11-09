#!/bin/bash

docker run --name apache --net devnetwork --ip 172.50.50.90 \
    -p 180:80 --mount "type=bind,source=C:\Users\fabri\Documents\linux\devdockers\apache\www,target=/var/www/html" \
    -d fabriciojf/apache