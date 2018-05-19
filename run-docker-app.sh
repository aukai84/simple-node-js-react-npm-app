#!/usr/bin/env sh
docker run \
    --rm \
    -u root \
    -p 3000:3000 \
    -v "$PwD":/usr/app/ \
    -v /usr/app/node_modules \
    react-app
