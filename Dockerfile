FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

COPY ./start.sh /tmp
COPY ./named.conf.local /tmp
COPY ./db.reseau.fr /tmp


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
&& apt-get install bind9 -y \
&& apt-get install dnsutils -y


ENTRYPOINT  /tmp/start.sh && /bin/bash


