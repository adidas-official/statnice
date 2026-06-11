#!/bin/bash

docker rm -f sandbox
docker image prune -af
docker build -t test_db .
docker run -p 5432:5432 --name sandbox -d test_db

