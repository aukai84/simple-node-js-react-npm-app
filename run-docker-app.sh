#!/usr/bin/env sh
docker run \
    --name react-docker \
    --rm \
    -u root \
    -p 8888:3000 \
    -v "$PWD":/usr/app/ \
    -v /usr/app/node_modules \
    new-react-app
