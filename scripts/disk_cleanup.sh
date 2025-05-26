#!/bin/bash
# Check and clean disk usage in /var/log

echo "Checking disk usage in /var..."
du -sh /var/*

echo "Cleaning up old logs..."
sudo find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Disk cleanup complete."
