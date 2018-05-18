#!/bin/bash

docker run \
    --rm \
    -u root \
    -p 3000:3000 \
    -v .:/usr/app/ \
    -v /usr/app/node_modules \
    react-app
