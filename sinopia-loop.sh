#!/bin/sh

OUTFILE=sinopia.out
ERRFILE=sinopia.err
CMD="sinopia"

echo $$ > sinopia.pid

while true; do
  echo >> $OUTFILE
  echo >> $ERRFILE
  date >> $OUTFILE
  date >> $ERRFILE
  echo "Starting $CMD" >> $OUTFILE
  echo "Starting $CMD" >> $ERRFILE
  $CMD 1>>$OUTFILE 2>>$ERRFILE
done

#EOF#