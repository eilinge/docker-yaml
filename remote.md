# remote addr

## alliyun

  ssh root@47.101.187.227
  wcq159753?

  172.19.37.39
## sioo

  ssh root@192.168.1.198

  ssh root@192.168.1.178
  sioo!1234

  /data/go/cmpp
    conf.yaml
    nohup.out
    stdout

  ps -ef|grep cmpp_service
  pkill cmpp_service

  ps -ef|grep channel_deliver
  pkill channel_deliver

## docker-compose

  docker build . -t api_service:latest

  docker login --username=eilinge registry.cn-shanghai.aliyuncs.com
  docker tag api_service registry.cn-shanghai.aliyuncs.com/eilingeloveduzi/eilinge:latest
  docker push registry.cn-shanghai.aliyuncs.com/eilingeloveduzi/eilinge:latest

  docker volume create portainer_data
  docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

  docker-compose -f docker-redis.yaml up -d
  docker-compose -f docker-api.yaml up -d
  docker-compose up -d

  docker-compose -f docker-mysql.yaml up -d
  docker logs -f lottery_mysql_1

  docker exec -ti c5b59e25afa4 mysql -h 127.0.0.1 -p
  mysql -u root -p </etc/mysql/db_lottery.sql

## jenkins deploy

  docker run -d --name jenkins_01 -p 8081:8080 -v /home/jenkins_01:/home/jenkins_01 jenkins/jenkins:lts

  password: 8638c488065e4682bf0ab9a408e29644

  export GITLAB_HOME=~/.gitlab
