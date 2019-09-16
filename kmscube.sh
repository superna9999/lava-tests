#!/bin/sh

set -x

sleep 2

modetest -M meson

sleep 2

( kmscube -D /dev/dri/card1 ) &

sleep 60

killall -9 kmscube
