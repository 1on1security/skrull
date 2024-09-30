#!/bin/bash
ip=$1
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

echo "<b>ipInfo.io Report:</b>"
$reportPath/ipinfo.bash $ip

echo "<b>criminalIP Report:</b>"
echo
$reportPath/criminalIpReport.py $ip | jq .score | sed '/{/d' | sed '/}/d' | sed -e 's/\"//g'
malicious=$($reportPath/criminalMalReport.py $ip | jq .is_malicious)
echo "<b>Malicious:</b> $malicious"
echo

vtrep=$($reportPath/vt -k $virus_total_key ip $ip --format json | jq . | sed -e '1d;$d' | jq .reputation)
echo "<b>Virustotal Reputation:</b> $vtrep"
echo

echo "<b>Shodan Host Report:</b>"
$reportPath/shodan host $1

echo "<b>Reported Behaviors:</b>"
$reportPath/maltiverse.bash $1
