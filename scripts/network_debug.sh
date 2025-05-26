#!/bin/bash
# Basic network troubleshooting commands

echo "Pinging Google DNS..."
ping -c 4 8.8.8.8

echo "Traceroute to google.com..."
traceroute google.com

echo "Checking open ports..."
sudo netstat -tulnp
