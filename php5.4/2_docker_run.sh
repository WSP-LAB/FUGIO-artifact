#!/bin/bash

docker run --rm -dit --name fugio_php5.4 -p 5454:80 \
-v $PWD/benchmarks:/FUGIO/benchmarks fugio_php5.4:v0.1
