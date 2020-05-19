echo ifconfig eth0 192.168.0.1
ifconfig eth0 192.168.0.1
ifconfig | grep  192.168.0.1

echo cp /tmp/named.conf.local /etc/bind
cp /tmp/named.conf.local /etc/bind
cat /etc/bind/named.conf.local

echo cp /tmp/resolv.conf /etc
cp /tmp/resolv.conf /etc
cat /etc/resolv.conf

echo cp /tmp/db.reseau.fr /etc/bind
cp /tmp/db.reseau.fr /etc/bind
cat /etc/bind/db.reseau.fr

echo cp /tmp/db.192 /etc/bind
cp /tmp/db.192 /etc/bind
cat /etc/bind/db.192


echo service rsyslog start
service rsyslog start
service rsyslog status

echo service bind9 start
service bind9 start
service bind9 status