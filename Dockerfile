FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install apt-utils -y \
&& apt-get install procps -y \
&& apt-get install sudo -y \
&& apt-get install rsyslog -y \
&& apt-get install dialog -y \
&& apt-get install vim -y \
&& apt-get install curl -y\
&& apt-get install wget -y\
&& apt-get install dos2unix -y\
&& apt-get install net-tools -y \
&& apt-get install tcpdump -y \
&& apt-get install traceroute -y \
&& apt-get install scapy -y \
&& apt-get install dnsutils -y \
&& apt-get install -y bind9 bind9-doc

COPY ./named.conf /etc/bind
COPY ./named.conf.local /etc/bind
COPY ./named.conf.log /etc/bind
COPY ./resolv.conf /etc
COPY ./db.reseau.fr /etc/bind
COPY ./db.reverse.fr /etc/bind
COPY ./start.sh /tmp
COPY ./usr.sbin.named /etc/apparmor.d

RUN mkdir /var/log/bind
RUN chown bind:root /var/log/bind
RUN  chmod 775 /var/log/bind

ENTRYPOINT  /tmp/start.sh && /bin/bash


