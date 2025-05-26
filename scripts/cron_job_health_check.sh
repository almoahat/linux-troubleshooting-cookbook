#!/bin/bash
# Check for important cron jobs (simulation)

echo "🔍 Listing root’s cron jobs..."

sudo crontab -l 2>/dev/null || echo "No crontab for root."

echo
echo "✅ Example of a daily health check job (expected):"
echo "0 2 * * * /usr/local/bin/disk_usage_alert.sh >> /var/log/disk_alert.log"

# Simulate checking presence
echo
echo "🛠️ (Simulation) Would check if critical monitoring jobs are scheduled."
