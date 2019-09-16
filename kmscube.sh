#!/bin/sh

set -x

sleep 2

modetest -M meson

sleep 2

( sleep 60 ; killall -9 kmscube ) &

kmscube -D /dev/dri/card1

exit 0
