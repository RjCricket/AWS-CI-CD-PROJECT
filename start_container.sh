#!/bin/bash
set -e

# Pull the docker image from the docker hub
docker pull rj972/sample-python-flask-project

# Run the docker image as a container
docker run -d -p 5000:5000 rj972/sample-python-flask-project