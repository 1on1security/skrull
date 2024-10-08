#!/bin/bash

web_root="/var/www/html"
img_root="/var/www/html/images"

echo "Checking for /var/www/html/images directory..."

if [ ! -d "$img_root" ]; then
    mkdir -p "$img_root"
    echo "Directory created."
    echo
else
    echo "$img_root Directory already exists."
    echo
fi

echo "Copying images to /var/www/html/images/..."
echo

cp images/anonymous.jpg images/logo.png $img_root/

echo "Copying skrull.php to /var/www/html/..."
echo
cp skrull.php $webroot/.
echo
echo "Finished!"
echo 
echo "Don't forget to exit ~/KEYS/auth.txt to add your API keys for each service!"
