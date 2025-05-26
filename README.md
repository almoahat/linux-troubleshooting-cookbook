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

