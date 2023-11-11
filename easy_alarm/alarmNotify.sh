#!/bin/bash
# Display a notification by native command
osascript -e 'display notification "Sir, here is the reminder." with title "Notification"'

# can also using native tools to play notification sound:
# afplay -v 1 /path/to/the/sound/files.mp3

