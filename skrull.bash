#!/bin/bash
ip=$1
source /data/code/prod/1ON1SECURITY_APPS/skrull/vars

echo "<b>criminalIP Report:</b>"
$reportPath/criminalIpReport.py $ip | jq .score | sed '/{/d' | sed '/}/d' | sed -e 's/\"//g'
malicious=$($reportPath/criminalMalReport.py $ip | jq .is_malicious)
echo "<b>Malicious:</b> $malicious"
echo

vtrep=$($reportPath/vt -k $virus_total_key ip $ip --format json | jq . | sed -e '1d;$d' | jq .reputation)
echo "<b>Virustotal Reputation:</b> $vtrep"
echo

echo "<b>ipInfo.io Report:</b>"
$reportPath/ipinfo.bash $ip

echo "<b>Zoomeye Report:</b>"
$reportPath/zoomeye.bash $ip
echo

echo "<b>Shodan Host Report:</b>"
$reportPath/shodan host $ip
echo

echo "<b>Maltiverse Reported Behaviors:</b>"
$reportPath/maltiverse.bash $ip
