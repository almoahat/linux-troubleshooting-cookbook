# Incident: Network Outage - DNS or Gateway Unreachable

## 🧭 Summary
A user-reported inability to access external websites from a production VM.

## 🔍 Root Cause
`ping` to external IPs worked, but DNS name resolution failed. Investigation revealed the system was missing a default DNS configuration.

## 🛠️ Resolution
Tested with:
```bash
ping 8.8.8.8
dig google.com
```
Updated `/etc/resolv.conf` to use Google DNS:
```bash
nameserver 8.8.8.8
```
Restored connectivity.

## ✅ Follow-Up Actions
- Applied consistent DNS settings via DHCP or cloud-init
- Added alert to detect DNS resolution failures
