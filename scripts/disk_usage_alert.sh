#!/bin/bash
# Alert if any partition is over 90% usage

THRESHOLD=90
echo "🔍 Checking for disks over ${THRESHOLD}% usage..."

OVERUSED=$(df -hP | awk -v threshold="$THRESHOLD" 'NR>1 && int($5) > threshold { print $0 }')

if [[ -n "$OVERUSED" ]]; then
    echo "⚠️ WARNING: High disk usage detected!"
    echo "$OVERUSED"
    # In production, this could email or send to a log server
else
    echo "✅ All disks under ${THRESHOLD}% usage."
fi
