#!/bin/sh
set -e

export arch=$(uname -m)

export eTAG="latest"

if [ "$arch" = "armv7l" ] ; then
   eTAG="latest-armhf-dev"
fi

echo "$1"
if [ "$1" ] ; then
  eTAG=$1
  if [ "$arch" = "armv7l" ] ; then
    eTAG="$1-armhf"
  fi
fi

echo Pushing pfelipefeitosa/gateway:$eTAG

docker push pfelipefeitosa/gateway:$eTAG

