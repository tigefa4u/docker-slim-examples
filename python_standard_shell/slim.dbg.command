#!/usr/bin/env bash

here="$(dirname "$BASH_SOURCE")"
cd $here

#eval "$(docker-machine env default)"
docker-slim --debug build --include-shell --show-clogs --http-probe my/sample-python-app-standard-shell


