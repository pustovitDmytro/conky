#!/bin/sh

### BEGIN INIT INFO
# Provides: conky-widget
# Required-Start: $all
# Required-Stop: $local_fs $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Conky widget
### END INIT INFO

echo "Try run conky" >> /var/log/test.log
sleep 10
conky -d -q -c /home/dima/.config/conky/.conkyrc &