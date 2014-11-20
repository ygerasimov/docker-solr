FROM makuk66/docker-solr
MAINTAINER Yuriy Gerasimov <yuri.gerasimov@gmail.com>
ENV REFRESHED_AT 2014-11-19

ADD /solr-conf/* /opt/solr/example/solr/collection1/conf/
