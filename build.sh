#!/bin/sh

docker build --pull -t kooldev/toolkit:0.13.1-terraform 0.13.1-terraform
docker build --pull -t kooldev/toolkit:2.0.43-aws-cli 2.0.43-aws-cli
docker build --pull -t kooldev/toolkit:1.18.2-kubectl 1.18.2-kubectl
docker build --pull -t kooldev/toolkit:1.25.5-docker-compose 1.25.5-docker-compose
docker build --pull -t kooldev/toolkit:1.41.0-doctl 1.41.0-doctl
docker build -t kooldev/toolkit:3.2.0-helm-cli 3.2.0-helm-cli
docker build -t kooldev/toolkit:terraform-aws terraform-aws
docker build -t kooldev/toolkit:full full
