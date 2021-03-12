FROM debian:8.11-slim

LABEL maintainer="Fabricio Costa - fabriciojf@gmail.com"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install asterisk -y
RUN apt-get install nano -y
RUN apt-get install net-tools -y
RUN apt-get install apache2 -y
RUN apt-get install libonig2 libqdbm14 libapache2-mod-php5 php5-cli php5-common php5-cgi -y
RUN apt-get install php5 php5-pgsql php5-curl -y
RUN apt-get install mongodb -y
RUN apt-get install wget -y

# JAVA JDK
RUN cd /opt
RUN wget http://fabriciojf.com/downloads/jdk-8u161-linux-x64.tar.gz
RUN tar -xzvf jdk-8u161-linux-x64.tar.gz
RUN mv jdk1.8.0_161 java
RUN mv java /usr/lib
RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/java/bin/java" 1
RUN update-alternatives --set java /usr/lib/java/bin/java

VOLUME  ["/etc/asterisk", "/opt"]

EXPOSE 80

CMD ["/usr/sbin/asterisk", "-f"]