#!/bin/bash

docker run --rm -dit --name fugio_php5.6 -p 5656:80 \
-v $PWD/benchmarks:/FUGIO/benchmarks fugio_php5.6:v0.1
