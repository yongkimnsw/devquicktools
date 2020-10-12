#!/bin/sh

kill_children() {
    pkill "$$"
    exit 0
}

trap "kill_children" SIGINT

while true; do
    echo ""
    echo "=================================== $(date)  =================================== "
    "$@";
done
