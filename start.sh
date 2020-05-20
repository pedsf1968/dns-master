#echo SET eth0 IP 192.168.0.1
#ifconfig eth0 192.168.0.1
#ifconfig | grep  192.168.0.1

echo START rsyslog
service rsyslog start

echo START bind9
service bind9 start


service --status-all