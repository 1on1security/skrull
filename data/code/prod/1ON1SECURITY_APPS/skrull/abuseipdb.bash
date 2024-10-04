#!/bin/bash
ipaddress=$1
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

# The -G option will convert form parameters (-d options) into query parameters.
# The CHECK endpoint is a GET request.
curl -GSs https://api.abuseipdb.com/api/v2/check \
  --data-urlencode "ipAddress=$ipaddress" \
  -d maxAgeInDays=1 \
  -d verbose \
  -H "Key: $abuse_key" \
  -H 'accept: application/json' \
  |  jq -r '.data.reports | map("<li>\(.comment)</li>") | "<!DOCTYPE html><html><head><title>Report Comments</title></head><body><ul>" + .[] + "</ul></body></html>"'
