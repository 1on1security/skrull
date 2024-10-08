#!/usr/bin/env python3
import requests
import sys

ip = sys.argv[1]
url = "https://api.criminalip.io/v1/asset/ip/report?ip="

with open('/home/nefario/KEYS/skrull_auth.txt', 'r') as file:
    for line in file:
        # Check if the line contains the string we are searching for
        if 'criminal_ip_key=' in line:
            # Split the line at the '=' sign and take the second part
            criminal_ip_key = line.split('=')[1].strip()
            break  # Stop searching after finding the key

#url = "https://api.criminalip.io/v1/feature/ip/malicious-info?ip="
#url = "https://api.criminalip.io/v1/asset/ip/summary?ip="
#url = "https://api.criminalip.io/v1/feature/ip/suspicious-info?ip="

url = url + ip

payload={}
headers = {
  "x-api-key": criminal_ip_key
}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)
