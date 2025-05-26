#!/usr/bin/env bats

@test "logrotate_check.sh runs and detects logrotate or exits cleanly" {
  run bash scripts/logrotate_check.sh
  [ "$status" -eq 0 ] || [ "$status" -eq 1 ]
}
