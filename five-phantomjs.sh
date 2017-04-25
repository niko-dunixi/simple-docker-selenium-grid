#!/usr/bin/env bash
set -e
./scale-all-down.sh
docker-compose scale node-phantomjs=5
docker-compose restart grid-hub
