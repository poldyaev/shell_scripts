#!/bin/bash

######################
# blog.kintoandar.com
######################

# vhost(s) logs
LOGS="/vhost/logs/*log"

# 24h notification
DATE=`date | awk {'print $1" "$2" "$3'}`

# count number of criticals
COUNT=`grep CRITICAL $LOGS | egrep -c "$DATE"`

# OK
if [ $COUNT -eq 0 ] ; then
                # OK
                echo "0 hits found"
                exit 0 
fi

# CRITICAL
echo "$COUNT hits found"
exit 2
