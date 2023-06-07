#!/bin/bash
set -e

# This script deletes all Docker resources running in your system.
echo "WARNING: This script will delete all Docker resources running in your system. Are you sure you want to continue?"
read -r -p "Enter y/n: " answer
if [ "$answer" == "y" ]; then
    echo "Deleting all Docker resources"
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q)
    docker system prune -f
    echo "Done"
    exit 0
    else
    echo "Aborting"
    exit 1
fi
