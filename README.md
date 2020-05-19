#dhcp server in debian container


#configuration files
- dhcpd.conf  
- isc-dhcp-server

#building docker image
all files must be saved in unix format. Use unix2dos command to convert in unix format.
copy dhcpd.conf  and isc-dhcp-server in /tmp
update and download network tools in container and start script start.sh

#build
docker build -t my-dhcp .

#run
docker run -ti --privileged my-dhcp