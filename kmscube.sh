#!/bin/sh

sleep 10

modetest -M meson

kmscube -D /dev/dri/card1 &

PID=$!

sleep 10

kill -9 $PID
