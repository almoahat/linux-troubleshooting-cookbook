#!/bin/bash
# Scan recent logs for common errors

LOG_FILES=("/var/log/syslog" "/var/log/messages" "/var/log/system.log")

echo "Scanning logs for recent error messages..."

for file in "${LOG_FILES[@]}"; do
  if [ -f "$file" ]; then
    echo
    echo "📄 Checking: $file"
    sudo grep -Ei 'error|fail|critical' "$file" | tail -n 10
  else
    echo "Log file not found: $file"
  fi
done
