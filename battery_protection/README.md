purpose: due to macBook battery is fragile, set a easy notication to prevent over charge or too low power level 
that damage the battery.

This shell will check if
a. battery level over 85%, when power cable plugs in;
b. battery level lower than 20%, when power cable not plugs in ;



Installation

1. put the shell file to any path you want. and set:
~~~
chmod +x /path/to/the/shell/batteryChech.sh
~~~

2. update cronjob:
~~~
# checking every 15mins
*/15 * * * * /path/to/the/shell/batteryChech.sh
~~~

3. set cron with full disk access by:
add your cron location (in most cases /usr/sbin/cron) to the Full Disk Access lists located at 
~~~
System Preferences.app -> Security & Privacy -> Privacy -> Full Disk Access.
~~~ 
Click the lock to make changes” and “+” to navigate to your cron location 

reference:
https://dccxi.com/posts/crontab-not-working-catalina/#:~:text=Aug%206%2C%202019-,If%20Any%20of%20Your%20Crontab%20Tasks%20No%20Longer%20Works%20on,lists%20located%20at%20System%20Preferences
