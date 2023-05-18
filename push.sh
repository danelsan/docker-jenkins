#!/bin/bash


# pushing image
docker tag docker-jenkins:lts  danelsan/docker-jenkins:lts
docker tag docker-jenkins:lts  danelsan/docker-jenkins:latest

docker login
docker push danelsan/docker-jenkins:lts
docker push danelsan/docker-jenkins:latest
docker logout


