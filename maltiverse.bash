#!/bin/bash
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars
ipaddress=$1

report=$(curl -sS -X 'GET' "https://api.maltiverse.com/ip/$ipaddress" -H 'accept: application/json' -H "Authorization: Bearer $maltiverse_key")

echo "$report" | jq -r '
  .blacklist[] |
  "Count: \(.count)\n" +
  "Description: \(.description)\n" +
  "First Seen: \(.first_seen)\n" +
  "Last Seen: \(.last_seen)\n" +
  "Source: \(.source)\n" +
  (if .labels then "Labels: \(.labels | join(", "))\n" else "" end) +
  (if .ref then "References: \(.ref | join(", "))\n" else "" end) +
  "\n"
'
