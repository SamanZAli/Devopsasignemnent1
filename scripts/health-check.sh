#!/bin/bash

# Service name
SERVICE="backend"

# Log file path
LOG_FILE="/var/log/healthcheck.log"

# Check if the backend server is running
if ! pgrep -f "server.js" > /dev/null
then
    # Log the restart event with timestamp
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $SERVICE is down! Restarting..." >> $LOG_FILE
    
    # Restart the backend service
    systemctl restart $SERVICE
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $SERVICE is running fine." >> $LOG_FILE
fi