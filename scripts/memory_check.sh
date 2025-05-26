#!/bin/bash
# Show basic memory usage information

echo " Checking system memory usage..."

echo
echo " Memory Usage (free -m):"
free -m

echo
echo "Top 5 memory-consuming processes:"
ps aux --sort=-%mem | head -n 6
