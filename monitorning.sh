#!/bin/bash

# Копируем конфиг prometheus.service
cp /home/qqee/monitorning-git/prometheus.service /etc/systemd/system/prometheus.service

# Копируем конфиг prometheus
cp /home/qqee/monitorning-git/prometheus.yml /etc/prometheus/prometheus.yml

# Перезапуск
systemctl daemon-reload

# Запускаем сервис Prometheus
systemctl start prometheus

# Включаем автозапуск сервиса Prometheus
systemctl enable prometheus
