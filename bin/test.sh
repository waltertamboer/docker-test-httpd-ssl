#!/usr/bin/env bash

set -e

# The directory of this script
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t docker-test-httpd-ssl "$BASE_DIR/../image/"

cd "$BASE_DIR/../project/"

docker-compose up --build --force-recreate
