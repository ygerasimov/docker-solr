#/bin/bash
container=$1
if [[ $# -eq 0 ]] ; then
  echo 'Please provide container name.'
  exit 1
fi
docker run -d --dns 172.17.42.1 --name $container -h $container ygerasimov/solr
new_ip=$(docker inspect $container | grep IPAddress | cut -f4 -d'"')
echo "address=/$container/$new_ip" > /etc/dnsmasq.d/0host_$container
service dnsmasq restart
