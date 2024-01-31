 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT


### Установка Prometheus:

   > #Скачиваем Prometheus
    
    wget https://github.com/prometheus/prometheus/releases/download/v2.46.0/prometheus-2.46.0.linux-amd64.tar.gz
#
   > #Распаковка архивов
    
    tar xzvf prometheus-*.t*gz
#

### Установка Node Exporter:

   > #Скачиваем Node Exporter
   
    wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
#
   > #Распаковка архивов
    
    tar xzvf node_exporter-*.t*gz
#

### Установка Grafana:

   > #Скачиваем Grafana
    
    wget https://dl.grafana.com/oss/release/grafana_10.0.3_amd64.deb

#

   > #Устанавливаем Grafana
    
    sudo dpkg -i grafana_10.0.3_amd64.deb

#
 ### Настройка Grafana (в браузере):

    # Confuguration - Data sources
    # Add data source - Prometheus
    # URL http://localhost:9090
    # Save & test

### Настройка Dashboard

* Create dashboard
* Import
  
* [Node Exporter Full](https://grafana.com/grafana/dashboards/1860-node-exporter-full) / [Node Exporter Dashboard EN 20201010-StarsL.cn](https://grafana.com/grafana/dashboards/11074-node-exporter-for-prometheus-dashboard-en-v20201010/)
* paste ID - Load
* Import
* Prometheus - выбрать data source
* Import


#



 
### НАСТРОЙКА MONITORNING
### 1. Настраиваем статические ip адреса:
   
* #### Запустить скрипт [networkd_static_ip.sh](https://github.com/rashenko/monitorning-git/blob/main/networkd_static_ip.sh), он настроит статический ip

### 2. Prometheus, Grafana:
   
* #### Запустить скрипт [monitorning.sh](https://github.com/rashenko/monitorning-git/blob/main/monitorning.sh), он скопирует конфиги и перезапустит сервисы

### 3. Установка node_exporter :
   
* #### Запустить скрипт [node_exporter.sh](https://github.com/rashenko/monitorning-git/blob/main/node_exporter.sh), он установит и настроит node_exporter
#
