#!/bin/bash

echo "🔍 Checking disk usage for /var/log ..."
sudo du -sh /var/log/* 2>/dev/null | sort -hr | head -n 20

echo
echo "🧪 Preview: Old .log files in /var/log older than 7 days"
sudo find /var/log -type f -name "*.log" -mtime +7 -exec ls -lh {} \;

read -p "⚠️ Do you want to delete these files? (y/n): " confirm
if [[ $confirm == "y" || $confirm == "Y" ]]; then
    echo "🗑️ Deleting old .log files..."
    sudo find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;
    echo "✅ Cleanup complete."
else
    echo "❌ Skipping deletion. No changes made."
fi
