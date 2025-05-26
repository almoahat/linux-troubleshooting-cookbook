#!/usr/bin/env bats

@test "disk_cleanup.sh runs and prompts user" {
  run bash scripts/disk_cleanup.sh <<< "n"
  [ "$status" -eq 0 ]
  [[ "$output" =~ "Preview: Old .log files" ]]
  [[ "$output" =~ "Skipping deletion" ]]
}
