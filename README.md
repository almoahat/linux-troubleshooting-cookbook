# Linux Troubleshooting Cookbook

This project provides a collection of bash scripts and practical incident-style write-ups to help troubleshoot common Linux system issues.

## Project Structure

- `scripts/` - Bash scripts for common troubleshooting tasks
- `incidents/` - Example incident reports with root cause analysis and resolution steps

## Usage

Run scripts using:

```bash
bash scripts/<script_name>.sh
```

Ensure you have the required permissions (some scripts require `sudo`).

## Included Scripts

- `disk_cleanup.sh`: Clean up old logs in `/var/log` to free up disk space.
- `restart_failed_services.sh`: Identify and restart failed systemd services.
- `network_debug.sh`: Basic network diagnostics.

## Sample Incident Reports

See `incidents/` directory for write-ups of simulated issues and how they were resolved.
## 📄 Sample Incident Reports

- [High Disk Usage on /var](incidents/high_disk_usage.md)
- [Failed Service Recovery](incidents/failed_service_recovery.md)
- [DNS or Gateway Unreachable](incidents/network_outage_dns_gateway.md)
- [Misconfigured Firewall Blocking SSH](incidents/misconfigured_firewall.md)

## Alerting & Monitoring Scripts

- `disk_usage_alert.sh`: Alerts if any partition exceeds 90% usage.
- `logrotate_check.sh`: Verifies if logrotate is installed and shows basic config.
- `cron_job_health_check.sh`: Simulates checking for key cron jobs for system health.

## Running Tests

This project includes BATS tests to validate that scripts execute as expected.

### Setup

1. Install [BATS](https://github.com/bats-core/bats-core):
   ```bash
   git clone https://github.com/bats-core/bats-core.git
   cd bats-core
   sudo ./install.sh /usr/local
   ```

2. Run all tests:
   ```bash
   bats test/
   ```

Some scripts (like `restart_failed_services.sh`) are Linux-only and require `systemctl`.
