#!/usr/bin/env bash
set -e
./scale-all-down.sh
docker-compose scale node-chrome=5
docker-compose restart grid-hub
