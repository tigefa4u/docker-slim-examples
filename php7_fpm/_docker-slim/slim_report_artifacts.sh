#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
BDIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

pushd $BDIR
source _docker-slim.env

docker-slim --report $IMAGE_NAME.slim.report.json build --copy-meta-artifacts . --publish-exposed-ports dslimexamples/$IMAGE_NAME
popd
