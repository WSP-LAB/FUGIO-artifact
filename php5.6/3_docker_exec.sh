#!/bin/bash

docker exec -it $(docker ps -q -f status=running -f name=fugio_php5.6) /bin/bash
