#!/usr/bin/env bats

@test "network_debug.sh runs basic ping command" {
  run bash scripts/network_debug.sh
  [ "$status" -eq 0 ]
  [[ "$output" =~ "Pinging Google DNS" ]]
}
