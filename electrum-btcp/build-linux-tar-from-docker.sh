#!/bin/sh
set -xe

VERSION="1.1.1"
CURRENT_DIR="$(cd "$(dirname "${0}")" && pwd)"
TMPDIR="/tmp/build-electrum-btcp/"

rm -rf "${TMPDIR}"; mkdir -p "${TMPDIR}"
cp "${CURRENT_DIR}/Dockerfile" "${TMPDIR}"

(
cd "${TMPDIR}"
sed -i "s:VERSION_REPLACE_ME:${VERSION}:g" Dockerfile
docker build -t electrum-btcp .
)
docker run electrum-btcp cat "/Electrum-BTCP-${VERSION}.tar.gz" > "Electrum-BTCP-${VERSION}.tar.gz"

rm -rf "${TMPDIR}"
