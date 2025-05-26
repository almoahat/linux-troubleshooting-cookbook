#!/bin/bash

# Check if systemctl is available
if ! command -v systemctl &> /dev/null; then
  echo "This script requires systemctl and is intended for Linux systems with systemd."
  exit 1
fi

echo "Checking for failed services..."
FAILED_SERVICES=$(systemctl --failed --no-legend | awk '{print $1}')

for service in $FAILED_SERVICES; do
    echo "Restarting $service..."
    sudo systemctl restart "$service"
done

echo "All failed services attempted to restart."
