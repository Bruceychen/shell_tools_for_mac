#!/bin/bash

if [ "$(ioreg -r -k AppleClamshellState -d 4 | grep AppleClamshellState | grep Yes | awk '{print $NF}')" == "Yes" ]; then
  # check if laptop lid is closed
  echo "Laptop lid is closed"
else
  # "Current battery level: $battery_level"
  # Get the current battery level and remove the percentage symbol
  battery_level=$(pmset -g batt | awk '/InternalBattery/{print $3}' | cut -d ';' -f1 | tr -d '%')
  # Check if plugged in the power source
  if pmset -g batt | grep "AC Power" >/dev/null; then
    # "Power is plugged in"
    # Check if the battery level is over 85%
    if [ "$battery_level" -gt 85 ]; then
      # Display a notification by native command
      osascript -e 'display notification "Your devices now is over 85% power." with title "Notification"'

      # can also using native tools to play notification sound:
      # afplay -v 1 /path/to/the/sound/files.mp3
    fi
  else
    # "Power is not plugged in"
    # Check if the battery level is lower than 20%
    if [ "$battery_level" -lt 20 ]; then
      # Display a notification
      osascript -e 'display notification "Your devices is now running a dangerously low power levels." with title "Notification"'

      # can also using native tools to play notification sound:
      # afplay -v 1 /path/to/the/sound/files.mp3
    fi
  fi
fi
