#!/usr/bin/env bash
set -e
./dock-it.sh
docker-compose scale node-chrome=5 node-chrome-debug=0 node-firefox=0 node-firefox-debug=0
docker-compose restart grid-hub
# date +%I:%M
