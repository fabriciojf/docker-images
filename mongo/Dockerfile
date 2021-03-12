FROM alpine

LABEL maintainer="Fabricio Costa - fabriciojf@gmail.com"

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk update
RUN apk add mongodb=3.4.4-r0

RUN mongo --version

VOLUME ["/data/db"]
WORKDIR /data

EXPOSE 27017

CMD [ "mongod", "--bind_ip", "0.0.0.0" ]