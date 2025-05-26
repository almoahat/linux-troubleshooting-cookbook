# Incident: Misconfigured Firewall Blocking SSH

## 🧭 Summary
After rebooting a staging server, SSH access was lost.

## 🔍 Root Cause
A firewall rule in `iptables` was added manually and not persisted correctly. After reboot, default rules blocked all inbound connections.

## 🛠️ Resolution
Access was regained using out-of-band console. Confirmed firewall rules:
```bash
sudo iptables -L
```
Opened SSH port:
```bash
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```
Saved firewall rules:
```bash
sudo netfilter-persistent save
```

## ✅ Follow-Up Actions
- Moved to using `ufw` for easier rule management
- Documented required ports for staging environment
