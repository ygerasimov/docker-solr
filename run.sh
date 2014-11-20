#/bin/bash
container=$1
docker run -d --dns 172.17.42.1 --name $container -h $container ygerasimov/solr
new_ip=$(docker inspect $container | grep IPAddress | cut -f4 -d'"')
echo "address=/$container/$new_ip" > /etc/dnsmasq.d/0host_$container
service dnsmasq restart
