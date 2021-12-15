#!/bin/bash

docker run --rm -dit --name fugio_php7.2 -p 7272:80 \
-v $PWD/benchmarks:/FUGIO/benchmarks fugio_php7.2:v0.1
