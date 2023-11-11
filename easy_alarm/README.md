Purpose:
Try to set a easy alarm to pop up notification and/or play notify sound when put on ear pods at work.

just type "setAlarm HHmm" on terminal and will run the shell on time:
~~~
setAlarm 1600
~~~


Installation

1. put the shell file to any path you want. and set:
~~~
# shell for set up the time on cronjob
chmod +x /path/to/the/shell/setAlarm.sh

# shell for produce notification
chmod +x /path/to/the/shell/alarmNotify.sh
~~~

2. add below line at the bottom of bash_profile and reload it
~~~
setAlarm() {
  /path/to/the/shell/alarmNotify.sh $1
}
~~~
~~~
# on terminal
. ~/.bash_profile
~~~

3. set cron with full disk access by:
   add your cron location (in most cases /usr/sbin/cron) to the Full Disk Access lists located at
~~~
System Preferences.app -> Security & Privacy -> Privacy -> Full Disk Access.
~~~ 
Click the lock to make changes” and “+” to navigate to your cron location

reference:
https://dccxi.com/posts/crontab-not-working-catalina/#:~:text=Aug%206%2C%202019-,If%20Any%20of%20Your%20Crontab%20Tasks%20No%20Longer%20Works%20on,lists%20located%20at%20System%20Preferences
