#!/bin/bash
#might need root permission to copy into /usr/bin
echo "Installing TorNotify"
echo "deadlizard@tutanota.com,https://twitter.com/TheDeadLizard1"
sudo cp ./tornotify /usr/bin/tornotify #copy main file into bin
sudo chmod 777 /usr/bin/tornotify
#write out current crontab
crontab -l > /tmp/mycron
#echo new cron into cron file
echo "*/5 * * * * /usr/bin/tornotify" >> /tmp/mycron
#install new cron file
crontab /tmp/mycron
rm /tmp/mycron
tornotify
#enter new entry into crontab to show the stuff every 3 minutes.