#!/bin/bash


# Создаём папки и копируем файлы
mkdir {/etc/,/var/lib/}prometheus

cp -vi prometheus-*.linux-amd64/prom{etheus,tool} /usr/local/bin

cp -rvi prometheus-*.linux-amd64/{console{_libraries,s},prometheus.yml} /etc/prometheus/

chown -Rv prometheus: /usr/local/bin/prom{etheus,tool} /etc/prometheus/ /var/lib/prometheus/

# Запуск
systemctl daemon-reload

systemctl start grafana-server

systemctl status grafana-server
