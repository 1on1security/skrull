#!/bin/bash
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

ip=$1

curl -s GET "https://api.ip2location.io/?key=$ip2location_key&ip=$ip" | jq -r '"City: \(.city_name)\n" + "Region: \(.region_name)\n" + "Country: \(.country_name)\n" + "Organization: \(.as)\n" + "Lat: \(.latitude)\n" + "Long: \(.longitude)\n"'
