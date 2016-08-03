#!/usr/bin/env bash

case "$1" in
  "start")
    pid=`cat sinopia.pid`

    if [ -z "$pid" ]
    then
      nohup ./sinopia-loop.sh &
    else
      echo "Sinopia is runned. Stop server before starting"
      exit 1
    fi

    ps ax | grep sinopia
    ;;
  "stop")
    kill $(cat ./sinopia.pid)
    killall sinopia
    ps ax | grep sinopia
    echo > sinopia.pid
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