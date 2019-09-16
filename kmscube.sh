#!/bin/sh

set -ex

sleep 2

modetest -M meson

sleep 2

kmscube -D /dev/dri/card1 &

PID=$!

sleep 30

kill -9 $PID
