#!/bin/bash

while [ true ]; do
    echo "`date` - Testing network..."
    wget -q --tries=1 --timeout=3 --spider http://google.com

    if [ $? -eq 0 ]; then
        sleep 5 
    else
        echo "`date` - Offline, trying to restart wifi.."
        networksetup -setairportpower en0 off; networksetup -setairportpower en0 on
        osascript -e 'display notification "Monitor detected a wifi failure and restarted the connection." with title "Wifi break detected" sound name "Sosumi"'
        sleep 5
    fi
done

