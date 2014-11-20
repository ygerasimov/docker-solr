This repo is for easy creation of docker containers with apache solr (drupal configs).

In order to run it you will need to install docker (https://github.com/wsargent/docker-cheat-sheet) and dnsmasq (for resolving host names).

You will need to adjust configuration of dnsmasq. Edit /etc/dnsmasq.conf to add option
  conf-dir=/etc/dnsmasq.d 

Now you can build a docker image by running. This will take some time as you need to download around 700MB.
  sudo sh build.sh

Next you can create your solr container by
  sudo sh run.sh <name>

After container is created you can access it by http://<name>:8983/solr.

You can remove ALL docker containers by running
  sudo sh cleanup.sh

If you need to have different config files, drop them to solr-conf folder and rebuild the image by
sudo docker rmi ygerasimov/solr
sudo sh build.sh

