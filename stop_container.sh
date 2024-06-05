#!/bin/bash
set -e

# Log file for debugging
LOGFILE="/var/log/codedeploy/stop_container.log"
echo "Stopping container..." >> $LOGFILE 2>&1

# Stopping the container (if any)
containerid=$(docker ps -q)
if [ -n "$containerid" ]; then
    docker rm -f $containerid >> $LOGFILE 2>&1
    if [ $? -ne 0 ]; then
        echo "Failed to stop container" >> $LOGFILE 2>&1
        exit 1
    fi
    echo "Container stopped successfully." >> $LOGFILE 2>&1
else
    echo "No running container found." >> $LOGFILE 2>&1
fi
