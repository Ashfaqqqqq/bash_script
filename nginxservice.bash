#!/bin/bash
#nginx server is running or not running.
#Status of service
STATUS="$(systemctl is-active nginx.service)"
if [ "${STATUS}" = "active" ]; then
    echo "nginx service is running ....."
else
    echo " Service not running "
    systemctl start nginx
    systemctl enable nginx
    echo "service is now started "
    exit 1
fi
