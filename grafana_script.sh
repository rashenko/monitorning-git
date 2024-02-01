#!/bin/bash

# Запуск
systemctl daemon-reload

systemctl start grafana-server

systemctl status grafana-server
