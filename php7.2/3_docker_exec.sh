#!/bin/bash

docker exec -it $(docker ps -q -f status=running -f name=fugio_php7.2) /bin/bash
