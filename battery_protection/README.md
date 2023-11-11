**Purpose:**
Due to the fragility of the MacBook battery, this shell sets up a simple notification system 
to prevent overcharging or reaching too low power levels that could damage the battery. 

The shell checks if:
a. The battery level is over 85% when the power cable is plugged in.
b. The battery level is lower than 20% when the power cable is not plugged in.

**Installation:**

1. Place the shell file in any desired path and set permissions:

```bash
chmod +x /path/to/the/shell/batteryCheck.sh
```

2. Update the cronjob:

```bash
# Checking every 15 minutes
*/15 * * * * /path/to/the/shell/batteryCheck.sh
```

3. Set cron with full disk access:

   Add your cron location (in most cases /usr/sbin/cron) to the Full Disk Access lists located at:

   ```
   System Preferences.app -> Security & Privacy -> Privacy -> Full Disk Access.
   ```

   Click "Click the lock to make changes" and “+” to navigate to your cron location.

Reference:
[Setting Up Cron on Catalina](https://dccxi.com/posts/crontab-not-working-catalina/#:~:text=Aug%206%2C%202019-,If%20Any%20of%20Your%20Crontab%20Tasks%20No%20Longer%20Works%20on,lists%20located%20at%20System%20Preferences)
