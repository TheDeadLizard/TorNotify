#!/bin/bash
#might need root permission to copy into /usr/bin
echo "Installing TorNotify"
echo "Scripted by deadlizard@tutanota.com,https://twitter.com/TheDeadLizard1"
echo "Cron set to run every five minutes. Please change as you wish"
echo "No crontab for root"
sudo cp ./tornotify /usr/bin/tornotify #copy main file into bin
sudo chmod 777 /usr/bin/tornotify
sudo apt-get --assume-yes install jq #install jq from ubuntu repo
#write out current crontab
crontab -l > /tmp/mycron
#echo new cron into cron file
echo "*/5 * * * * /usr/bin/tornotify" >> /tmp/mycron #every 5 minutes
#install new cron file
crontab /tmp/mycron
rm /tmp/mycron
sleep 3

tornotify
#enter new entry into crontab to show the stuff every 3 minutes.