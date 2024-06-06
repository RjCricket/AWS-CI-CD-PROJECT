#!/bin/bash
set -e

# stop the container
containerId=`docker ps | awk -F " " '{print $1}'`
docker rm -f $containerId
