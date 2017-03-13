#!/usr/bin/env bash
set -e
# Stop and clean up old stuff before proceeding
time (
  docker-compose stop;
  docker-compose rm -f;
)
# Pull up our docker lamp... Is this actually just damp?
time docker-compose up -d #--build

echo ""
echo "Your local grid is up. You can view the following with default password: 'secret' "
echo "  Hub      http://localhost:4444/grid/console"
echo "  chrome   vnc://localhost:5900"
echo "  firefox  vnc://localhost:5901"
echo ""
echo "To use in the automation, your local properties need to include:"
echo "  automation.browser.grid-url=http://localhost:4444/wd/hub/"
