#!/bin/bash

WORK_DIR=`dirname $0`

cd "$WORK_DIR"

echo "64f116e3756bada878c04c5ede0bf747" > "$WORK_DIR/webapp/config/master.key"
mkdir "$WORK_DIR/tmp"
svn export --force https://github.com/SECCON/SECCON2018_online_CTF/trunk/Reversing/shooter/build/server/shooter "$WORK_DIR/tmp"

if [ -n $(docker network ls | grep " shooter-network ") ]; then
  docker network create shooter-network
fi

docker-compose up -d

rm -r "$WORK_DIR/tmp"