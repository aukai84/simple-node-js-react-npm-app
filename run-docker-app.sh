#!/usr/bin/env sh
docker run \
    --name react-docker \
    --rm \
    -u root \
    -p 3000:3000 \
    -v "$PWD":/usr/app/ \
    -v /usr/app/node_modules \
    react-app
