#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 HHMM (24-hour format)"
    exit 1
fi

# Parse the input argument as HHMM and split it into hours and minutes
time="$1"
hours="${time:0:2}"
minutes="${time:2:2}"

# Check if the input time is valid
if [[ ! $time =~ ^[0-2][0-9][0-5][0-9]$ || $hours -ge 24 || $minutes -ge 60 ]]; then
    echo "Invalid time format. Please use HHMM (24-hour format)."
    exit 1
fi

# Calculate the date and time for today
today=$(date +"%Y-%m-%d")
scheduled_time="${today} ${hours}:${minutes}"

# Add the cron job to run alarm shell at the specified time
(crontab -l 2>/dev/null; echo "${minutes} ${hours} * * * /path/to/the/shell/alarmNotify.sh") | crontab -

echo "Alarm set at ${scheduled_time}."
