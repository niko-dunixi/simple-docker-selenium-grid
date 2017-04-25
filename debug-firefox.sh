#!/usr/bin/env bash
set -e
./scale-all-down.sh
docker-compose scale node-firefox-debug=1
docker-compose restart grid-hub
