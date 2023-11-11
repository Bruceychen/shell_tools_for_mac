Purpose:
Trying to set up a simple alarm for notifications and/or a notification sound when using ear pods at work. 
Just type "setAlarm HHmm" in the terminal, and the shell will run at the specified time:

```bash
setAlarm 1600
```

Installation:

1. Place the shell files in any path you prefer and set permissions:

```bash
# Shell for setting up the time on cronjob
chmod +x /path/to/the/shell/setAlarm.sh

# Shell for producing notifications
chmod +x /path/to/the/shell/alarmNotify.sh
```

2. Add the following line at the bottom of your bash_profile and reload it:

```bash
setAlarm() {
  /path/to/the/shell/alarmNotify.sh $1
}
```

```bash
# On terminal
. ~/.bash_profile
```

3. Set cron with full disk access:

   Add your cron location (in most cases /usr/sbin/cron) to the Full Disk Access lists located at:

   ```
   System Preferences.app -> Security & Privacy -> Privacy -> Full Disk Access.
   ```

   Click "Click the lock to make changes" and “+” to navigate to your cron location.

Reference:
[Setting Up Cron on Catalina](https://dccxi.com/posts/crontab-not-working-catalina/#:~:text=Aug%206%2C%202019-,If%20Any%20of%20Your%20Crontab%20Tasks%20No%20Longer%20Works%20on,lists%20located%20at%20System%20Preferences)
