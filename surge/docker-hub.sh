#!/bin/sh
set -e

CURRENT_DIR="$(cd "$(dirname "${0}")" && pwd)"

docker logout; docker login

(
cd "${CURRENT_DIR}"

docker-compose rm -f
docker-compose build
docker-compose push
)
