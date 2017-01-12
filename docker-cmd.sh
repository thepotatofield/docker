#!/bin/bash

COMMAND=$1

if [ "$COMMAND" = "bash" ]; then
   docker exec -it $2 /bin/bash
elif [ "$COMMAND" = "stop_all" ]; then
   docker stop $(docker ps -a -q)
elif [ "$COMMAND" = "rm_all" ]; then
   docker rm $(docker ps -a -q)
else
   echo "Usage: ./docker-cmd.sh [bash|stop_all|rm_all] [image_id_or_name]"
fi
