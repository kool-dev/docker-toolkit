#!/bin/sh

docker build --pull -t kooldev/toolkit:terraform-aws terraform-aws
docker build -t kooldev/toolkit:full full
