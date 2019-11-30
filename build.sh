#!/bin/sh

# author: eilinge
# email: "17501329166@163.com"

# mkdir ~/.jenkins
# mkdir ~/.gitlab

# mkdir ~/.gitlab/conf
# mkdir ~/.gitlab/log
# mkdir ~/.sonarqube

export JENKINS_HOME=~/.jenkins
export GITLAB_HOME=~/.
export SONARQUBE_HOME=~/.sonarqube

docker-compose up -d
