# remote addr

## alliyun

  ssh root@47.101.187.227
  wcq159753?

  172.19.37.39
## sioo

  ssh root@192.168.1.198
  sioo!1234

  /data/go/cmpp
    conf.yaml
    nohup.out
    stdout

  ps -ef|grep cmpp_service
  pkill cmpp_service

  channel-info:7377309771234304

  set channel-info:7377309771234304 "{\"updateDate\":1575352160000,\"corpid\":\"100002\",\"passpwd\":\"123\",\"routeChannel\":\"0\",\"channelType\":1,\"gatewayIp\":\"192.168.1.198\",\"wordsMaxlen\":500,\"speed\":200,\"network\":1,\"updater\":\"admin\",\"mobileShieldArea\":\"\",\"number\":\"100002\",\"sendRate\":200,\"wordsLen\":70,\"balance\":\"0\",\"provider\":\"paas\",\"price\":10.0,\"gatewayNomber\":\"100002\",\"gatewayServiceId\":\"help\",\"id\":\"7377309771234304\",\"routeType\":0,\"channelProvider\":\"paas\",\"channelId\":\"7377309771234304\",\"createDate\":1574414203000,\"area\":\"\",\"isProvince\":0,\"creator\":\"gotest\",\"localPort\":0,\"recordType\":0,\"channelIp\":\"192.168.1.198\",\"expidLen\":12,\"localExpidLen\":12,\"gatewayPort\":7777,\"telecomShieldArea\":\"\",\"channelPort\":7777,\"shieldArea\":\"\",\"unicomShieldArea\":\"\",\"msgformat\":8,\"tenantId\":\"102019081399792\",\"channelName\":\"100002\",\"serviceid\":\"help\",\"account\":\"100002\",\"status\":4, \"windowstats\":\"true\"}"

  get "channel-info:7377309771234304"

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
