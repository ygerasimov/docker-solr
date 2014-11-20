#/bin/bash
# Stop containers.
docker stop $(docker ps -a -q)
# Remove all containers.
docker rm $(docker ps -a -q)
# Remove hosts records.
rm -rf /etc/dnsmasq.d/*
