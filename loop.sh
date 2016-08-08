#!/bin/sh

OUTFILE=nodejs.out
ERRFILE=nodejs.err
PIDFILE=.pid
CMD="sinopia" # your command

echo $$ > $PIDFILE
echo > $OUTFILE
echo > $ERRFILE

while true
do
  echo >> $OUTFILE
  echo >> $ERRFILE
  date >> $OUTFILE
  date >> $ERRFILE
  echo "Starting $CMD" >> $OUTFILE
  echo "Starting $CMD" >> $ERRFILE
  $CMD 1>>$OUTFILE 2>>$ERRFILE
  #$CMD 1>>/dev/null 2>>$ERRFILE
done

#EOF#
