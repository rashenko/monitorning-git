#!/bin/bash

# Добавляем пользователей node exporter
useradd --no-create-home --shell /bin/false node_exporter

# Копируем файлы node exporter в /usr/local
cp node_exporter-*.linux-amd64/node_exporter /usr/local/bin
chown node_exporter: /usr/local/bin/node_exporter

# Копируем конфиг службы node exporter
cp /home/qqee/monitorning-git/node_exporter.service /etc/systemd/system/node_exporter.service

# Копируем конфиг prometheus.service
cp /home/qqee/monitorning-git/prometheus.service /etc/systemd/system/prometheus.service

# Копируем конфиг prometheus
cp /home/qqee/monitorning-git/prometheus.yml /etc/prometheus/prometheus.yml

# Создаём папки и копируем файлы prometheus
mkdir {/etc/,/var/lib/}prometheus
cp -vi prometheus-*.linux-amd64/prom{etheus,tool} /usr/local/bin
cp -rvi prometheus-*.linux-amd64/{console{_libraries,s},prometheus.yml} /etc/prometheus/
chown -Rv prometheus: /usr/local/bin/prom{etheus,tool} /etc/prometheus/ /var/lib/prometheus/


# Перезапуск
systemctl daemon-reload

# Запускаем службу node_exporter
systemctl start node_exporter

# Проверяем статус службы node_exporter
systemctl status node_exporter

# Включаем автозапуск службы, при включении машины
systemctl enable node_exporter

# Запускаем сервис Prometheus
systemctl start prometheus

# Проверяем статус сервиса Prometheus
systemctl status prometheus

# Включаем автозапуск сервиса Prometheus
systemctl enable prometheus

# Запуск Grafana
systemctl start grafana-server

# Проверяем статус Grafana
systemctl status grafana-server



