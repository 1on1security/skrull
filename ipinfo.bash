#!/bin/bash
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

ip=$1

curl -s "ipinfo.io/$ip?token=$ipinfo_key" | jq -r '"IP: \(.ip)\n" +"Hostname: \(.hostname)\n" + "City: \(.city)\n" + "Region: \(.region)\n" + "Country: \(.country)\n" + "Location: \(.loc)\n" + "Organization: \(.org)\n" +"Postal: \(.postal)\n" + "Timezone: \(.timezone)\n"'
