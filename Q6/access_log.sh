#!/bin/bash

LOGFILE=/var/log/apache2/access.log

X=$(( 10 * 24 * 60 * 60 )) ## 10 days

function get_ts {
    DATE="${1%%\]*}"; DATE="${DATE##*\[}"; DATE=${DATE/:/ }; DATE=${DATE//\// }
    TS=$(date -d "$DATE" '+%s')
}

get_ts "$(tail -n 1 "$LOGFILE")"
LAST=$TS

while read -r LINE; do
    get_ts "$LINE"
    (( (LAST - TS) <= X )) && echo " Log : $LINE" && echo "IP Address: $(echo $LINE | awk '{print $1}')"
done < "$LOGFILE"