FROM php:5.6-apache-jessie
LABEL maintainer="Fabricio Costa - fabriciojf@gmail.com"

WORKDIR /var/www/html

COPY ./files/000-default.conf /etc/apache2/sites-available/
COPY ./files/clone /var/www/html
COPY ./files/index.php /var/www/html
COPY ./files/devsetup.ini /usr/local/etc/php/conf.d/

RUN a2enmod rewrite && \
    a2dissite 000-default

RUN apt-get update
RUN apt-get install -y \
    nano \
    wget \
    git \
    inetutils-ping \
    net-tools -y

RUN apt-get install -y libpq-dev && \
    docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && \
    docker-php-ext-install pdo pdo_pgsql pgsql

EXPOSE 80