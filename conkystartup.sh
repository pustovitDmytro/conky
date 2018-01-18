#!/bin/sh

### BEGIN INIT INFO
# Provides: conky-widget
# Required-Start: $local_fs $network
# Required-Stop: $local_fs $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Conky widget
### END INIT INFO

conky -d -q -c ~/.config/conky/.conkyrc &