#!/bin/bash

PWD=`pwd`

if [ "$1" = "setup" ]; then
   # setup and run the image
   docker run --rm --name mongo-samples -p 27018:27017 -v $PWD/samples:/data/samples -d mongo:latest

   # import the data samples
   docker exec -it mongo-samples mongoimport --db samples --collection cities --drop --file /data/samples/cities.json
   docker exec -it mongo-samples mongoimport --db samples --collection grades --drop --file /data/samples/grades.json
   docker exec -it mongo-samples mongoimport --db samples --collection restaurants --drop --file /data/samples/restaurants.json

elif [ "$1" = "bash" ]; then
   docker exec -it mongo-samples /bin/bash
else
   echo "Usage: ./mongo-samples.sh [setup|bash]"
fi
