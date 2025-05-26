#!/bin/bash
# Test SSH connectivity to a host

if [ -z "$1" ]; then
  echo "Usage: $0 user@hostname"
  exit 1
fi

echo "Testing SSH connection to $1 ..."
ssh -v -o ConnectTimeout=5 "$1"
