#!/usr/bin/env bash
image_name="houndify"
docker build -t ${image_name} .

docker run -it --rm --net=host \
    ${image_name}
