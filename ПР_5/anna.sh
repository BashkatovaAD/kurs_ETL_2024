#!/bin/bash

#oпределить номер контейнера, в котором выполнялся DAG
CONTAINER_ID=$(sudo docker ps --filter "name=business_case_rocket-scheduler-1" -q)

#копировать файлы из каталога /tmp/images в основную OC
sudo docker cp --archive $CONTAINER_ID:/tmp/images /home/mgpu/Downloads/imaging
