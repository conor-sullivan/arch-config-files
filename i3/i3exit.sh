#!/bin/sh

case "$1" in
    lock)
        i3lock -c 000000
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
         pm-suspend | i3lock -c 000000
        ;;
    hibernate)
         pm-hibernate
        ;;
    reboot)
         reboot
        ;;
    shutdown)
         poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
