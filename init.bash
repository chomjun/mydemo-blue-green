#!/bin/bash

BASE_DIR=/opt/github/mydemo-blue-green
GW_DIR=${BASE_DIR}/proxy-lb
BLUE_DIR=${BASE_DIR}/web-blue
GREEN_DIR=${BASE_DIR}/web-green


docker stack rm demo-web
sleep 10

cd ${GREEN_DIR}/
	docker stack deploy -c docker-compose.yml demo-web
cd ${BLUE_DIR}/
	docker stack deploy -c docker-compose.yml demo-web
cd ${GW_DIR}/
	docker stack deploy -c docker-compose.yml demo-web



