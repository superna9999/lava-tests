#!/bin/sh

. ./common

dmesg > $OUTPUT_DIR/dmesg.start
date +%s > $OUTPUT_DIR/timestamp.start

exit 0

echo "== export =="
export

echo "== COLUMNS =="
echo "COLUMNS=$COLUMNS"
COLUMNS=158


tput cols
result $? tput_cols

echo "== checkwinsize =="
shopt -s checkwinsize
echo $?

echo "== stty =="
stty size

echo "0123456789012345678901234567890123456789012345678901234567890123456789012345678X"
result $? "longline80"
echo "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678X"
result $? "longline120"
echo "012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678X"
result $? "longline160"