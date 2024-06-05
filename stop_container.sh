#!/bin/bash
set -e

# Stopping the container (if any)
containerid =`docker ps | awk -F " " '{print $1}'`
docker rm -f $containerid 
