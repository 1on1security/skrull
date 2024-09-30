#!/bin/bash
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

ip1=$1
ip2=$2
ip3=$3

curl -s "ipinfo.io/$ip1?token=$ipinfo_key" | jq -r '"IP: \(.ip)\n" +"Hostname: \(.hostname)\n" + "City: \(.city)\n" + "Region: \(.region)\n" + "Country: \(.country)\n" + "Location: \(.loc)\n" + "Organization: \(.org)\n" +"Postal: \(.postal)\n" + "Timezone: \(.timezone)\n"'

if [ -n "$ip2" ]; then
curl -s "ipinfo.io/$ip2?token=$ipinfo_key" | jq -r '"IP: \(.ip)\n" +"Hostname: \(.hostname)\n" + "City: \(.city)\n" + "Region: \(.region)\n" + "Country: \(.country)\n" + "Location: \(.loc)\n" + "Organization: \(.org)\n" +"Postal: \(.postal)\n" + "Timezone: \(.timezone)\n"'
fi

if [ -n "$ip3" ]; then
curl -s "ipinfo.io/$ip3?token=$ipinfo_key" | jq -r '"IP: \(.ip)\n" +"Hostname: \(.hostname)\n" + "City: \(.city)\n" + "Region: \(.region)\n" + "Country: \(.country)\n" + "Location: \(.loc)\n" + "Organization: \(.org)\n" +"Postal: \(.postal)\n" + "Timezone: \(.timezone)\n"'
fi

