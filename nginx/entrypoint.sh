#!/bin/sh

nginx "$@"
calculate_sum="find /etc/nginx -type f -name *.conf -exec md5sum {} +"
oldsum=$(eval "${calculate_sum}")

while true
do
    sleep 10
    newsum=$(eval "${calculate_sum}")
    if [ "${newsum}" != "${oldsum}" ]; then
        echo "At $(date), config file update detected."
        nginx -s reload
        oldsum=${newsum}
        echo "nginx has reloaded."
    fi
done
