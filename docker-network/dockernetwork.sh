#!/bin/bash

docker network ls
sleep 3
docker run -itd --name=networktest13 ubuntu    #name of your network
docker network inspect bridge
docker network disconnect bridge networktest13    #name of your network
sleep 3
docker network create -d bridge my_bridge12     # create a bridge and specify a name of your bridge
docker network ls                  # list your network
docker network inspect my_bridge12     #name should be same as what you have mention at the creation time

