#!/bin/bash

## Build
#docker build -t mail ./mail
docker build -t www ./www

## Run
docker network create -d bridge asa-net

docker run -d --net=asa-net --name www www
