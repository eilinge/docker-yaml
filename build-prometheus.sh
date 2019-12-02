#!/bin/sh

mkdir ~/.exporter
mkdir ~/.exporter/proc
mkdir ~/.exporter/sys

export EXPORTER=~/.exporter

mkdir -p /opt/prometheus
export PROMETHEUS=/opt/prometheus
cp ./prometheus.yml ${PROMETHEUS}

mkdir -p /opt/grafana-storage
chmod 777 /opt/grafana-storage -R
#export GRAFANA=/opt/grafana-storage
docker-compose -f docker-prometheus.yaml up -d
