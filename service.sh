#!/usr/bin/env bash

SERVICE=sinopia  # your app name eg. server.js
PIDFILE=.pid

case "$1" in
  "start")
    pid=`cat $PIDFILE`

    if [ -z "$pid" ]
    then
      nohup ./loop.sh &
    else
      echo "Server is runned. Stop server before starting"
      exit 1
    fi

    ps ax | grep sinopia
    ;;
  "stop")
    kill $(cat ./$PIDFILE)
    killall $SERVICE
    ps ax | grep sinopia
    echo > $PIDFILE
  ;;
  "restart")
    $0 stop
    $0 start
  ;;
  *)
    echo "Usage: start|stop|restart"
  ;;
esac

#EOF#
