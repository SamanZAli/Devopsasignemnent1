#!/bin/bash

# Path to the sample log file
LOG_FILE="access-logs-4-analysis.log"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Count requests from each IP address
echo "Request count per IP address:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -n

# Display the top 3 IP addresses with the most requests
echo -e "\nTop 3 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -3