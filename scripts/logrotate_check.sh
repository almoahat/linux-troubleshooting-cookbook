#!/bin/bash
# Check if logrotate is installed and configured

echo "🔍 Checking for logrotate..."

if ! command -v logrotate &> /dev/null; then
    echo "❌ logrotate is not installed."
    exit 1
fi

echo "✅ logrotate is installed."

CONFIG_PATH="/etc/logrotate.conf"
if [[ -f "$CONFIG_PATH" ]]; then
    echo "📄 Found config at $CONFIG_PATH"
    echo "Sample of configured logs:"
    grep -E '^/var' "$CONFIG_PATH" | head -n 5
else
    echo "⚠️ logrotate config not found."
fi
