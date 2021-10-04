FROM ubuntu:bionic

LABEL maintainer="Fabricio Costa - fabriciojf@gmail.com"

RUN apt update
RUN apt upgrade -y

RUN apt install -y -qq g++ make wget patch libedit-dev uuid-dev libjansson-dev libxml2-dev sqlite3 libsqlite3-dev libssl-dev nano net-tools

WORKDIR /usr/local/src

# Make libsrtp
RUN wget https://github.com/cisco/libsrtp/archive/v1.5.4.tar.gz
RUN tar xvzf v1.5.4.tar.gz
WORKDIR libsrtp-1.5.4
# Updating config.guess and config.sub to enable a build on amd64 Platform
RUN wget -O config.guess http://git.savannah.gnu.org/cgit/config.git/plain/config.guess
RUN wget -O config.sub http://git.savannah.gnu.org/cgit/config.git/plain/config.sub
RUN ./configure
RUN make
RUN make install

WORKDIR /usr/local/src

# Getting, Building and Installing Asterisk (release)
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-16.20.0.tar.gz
RUN tar xvzf asterisk-16.20.0.tar.gz
RUN mv ./asterisk-16.20.0 ./asterisk
WORKDIR asterisk

#RUN ./configure --with-srtp
RUN ./configure

RUN make menuselect.makeopts
RUN menuselect/menuselect --disable BUILD_NATIVE --enable CORE-SOUNDS-EN-ALAW menuselect.makeopts
RUN make
RUN make install

# Test Configuration
RUN mkdir -p /etc/asterisk

WORKDIR /etc/asterisk

CMD ["asterisk", "-f"]
