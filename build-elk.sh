#!/bin/bash

docker cp docker-yaml_leon_elasticsearch-head_1:/usr/share/elasticsearch/config/elasticsearch.yml /home/eilinge/elasticsearch.yml

docker cp /home/eilinge/elasticsearch.yml docker-yaml_leon_elasticsearch-head_1:/usr/share/elasticsearch/config/elasticsearch.yml

# build elasticsearch repository
sudo mkdir ~/elasticsearch
cd ~/elasticsearch

sudo git clone git://github.com/mobz/elasticsearch-head.git
sudo apt-get install npm
sudo npm install -g grunt-cli
sudo npm install grunt --save
sudo npm install

# docker logstash
mkdir -p ~/.logstash/dataJson
chmod 777 ~/.logstash/dataJson
export LOGSTASH=~/.logstash
