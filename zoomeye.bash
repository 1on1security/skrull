#!/bin/bash
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

ip=$1

curl -s GET "https://api.zoomeye.hk/host/search?query=$ip" -H "API-KEY:$zoom_eye_key" | jq -r '.matches[0] | "IP: \(.ip)\nCity: \(.geoinfo.city.names.en)\nCountry: \(.geoinfo.country.names.en)\nOrganization: \(.geoinfo.organization)\nISP: \(.geoinfo.isp)\nLocation: \(.geoinfo.location.lat) \(.geoinfo.location.lon)"'
