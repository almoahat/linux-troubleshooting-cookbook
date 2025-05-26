#!/bin/bash
# Restart failed systemd services

echo "Checking for failed services..."
FAILED_SERVICES=$(systemctl --failed --no-legend | awk '{print $1}')

for service in $FAILED_SERVICES; do
    echo "Restarting $service..."
    sudo systemctl restart "$service"
done

echo "All failed services attempted to restart."
