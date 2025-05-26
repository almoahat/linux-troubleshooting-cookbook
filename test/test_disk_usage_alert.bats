#!/usr/bin/env bats

@test "disk_usage_alert.sh completes successfully" {
  run bash scripts/disk_usage_alert.sh
  [ "$status" -eq 0 ]
}
