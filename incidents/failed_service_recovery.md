# Incident: Failed Service Recovery

## 🧭 Summary
An application stopped responding to requests. Initial investigation showed that the associated service had failed silently.

## 🔍 Root Cause
The systemd unit for the application had crashed due to a misconfiguration in the environment variables file.

## 🛠️ Resolution
The failed service was identified using:
```bash
systemctl --failed
```
Logs were reviewed using:
```bash
journalctl -u <service-name>
```
The environment variable issue was fixed and the service was restarted with:
```bash
sudo systemctl restart <service-name>
```

## ✅ Follow-Up Actions
- Added monitoring alerts for service status
- Implemented a health check endpoint for the service
