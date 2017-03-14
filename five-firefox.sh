#!/usr/bin/env bash
set -e
docker-compose scale node-chrome=0 node-chrome-debug=0 node-firefox=5 node-firefox-debug=0
docker-compose rm -f;
docker-compose restart grid-hub
