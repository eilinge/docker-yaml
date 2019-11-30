#!/bin/sh

mkdir ~/.exporter
mkdir ~/.exporter/proc
mkdir ~/.exporter/sys

export EXPORTER=~/.exporter

mkdir -p /opt/prometheus
export PROMETHEUS=/opt/prometheus
cp ./prometheus.yml ${PROMETHEUS}

mkdir -p /opt/grafana-storage

docker-compose -f docker-prometheus.yaml up -d
