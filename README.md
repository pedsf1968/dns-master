#dns-master server in debian container


#configuration files
- db.reseau.fr
- db.192  
- named.conf.local
- resolv.conf

#building docker image
all files must be saved in unix format. Use unix2dos command to convert in unix format.
copy files in /tmp
update and download network tools in container and start script start.sh

#build
docker build -t my-dns-master .

#run
docker run -ti --privileged my-dns-master