#!/bin/bash

# Копируем конфиг prometheus.service
cp /home/qqee/monitorning-git/prometheus.service /etc/systemd/system/prometheus.service

# Копируем конфиг prometheus
cp /home/qqee/monitorning-git/prometheus.yml /etc/prometheus/prometheus.yml

#Добавляем пользователей
useradd --no-create-home --shell /usr/sbin/nologin prometheus

# Создаём папки и копируем файлы prometheus
mkdir {/etc/,/var/lib/}prometheus
cp -vi prometheus-*.linux-amd64/prom{etheus,tool} /usr/local/bin
cp -rvi prometheus-*.linux-amd64/{console{_libraries,s},prometheus.yml} /etc/prometheus/
chown -Rv prometheus: /usr/local/bin/prom{etheus,tool} /etc/prometheus/ /var/lib/prometheus/

# Перезапуск
systemctl daemon-reload

# Запускаем сервис Prometheus
systemctl start prometheus

# Включаем автозапуск сервиса Prometheus
systemctl enable prometheus

# Запуск Grafana
systemctl start grafana-server



