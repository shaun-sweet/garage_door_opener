#!/bin/sh
#/etc/init.d/garage
#
### BEGIN INIT INFO
# Provides:          garage
# Required-Start:    $remote_fs $local_fs $network $all
# Required-Stop:     $remote_fs $local_fs $network $all
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: garage
### END INIT INFO
echo "executing..."
PIDFILE=/var/run/garage_door_server.pid

case "$1" in
  start)
    echo "Starting garage door server"
    sudo touch $PIDFILE
    sudo ruby /home/pi/projects/garage_door_opener/server.rb &
    echo "$!" >> $PIDFILE
    ;;
  stop)
    echo "Stopping garage door server"
    sudo kill $(cat $PIDFILE)
    sudo rm $PIDFILE
    ;;
  *)
    echo "Usage: /etc/init.d/blah {start|stop}"
    exit 1

esac