#!/bin/bash

projectsDir=$(dirname `pwd`)
echo ${projectsDir}

docker run --rm -it \
    -v ${projectsDir}:/root/synergy-core \
    synergy-builder-windows \
    bash


    # CMD cd Projects/synergy-core && \
    # mkdir build && \
    # cd build && \
    # cmake .. && \
    # make