#!/bin/sh
set -e

CURRENT_DIR="$(cd "$(dirname "${0}")" && pwd)"

_cleanup() {
    cd "${CURRENT_DIR}"
    for file in Dockerfile* docker-compose*.yml; do
        [ -f "bkp.${file}" ] && mv "bkp.${file}" "${file}"
    done
}

trap _cleanup 0 2 3 15 #cleanup on exit|crashes|etc
docker logout; docker login

(
cd "${CURRENT_DIR}"

for release in $(gh-release-downloader -L yudai/gotty  | grep linux | grep amd64 | awk -F'/' '{gsub("v", ""); print $8}' | tac); do
    for file in Dockerfile* docker-compose*.yml; do
        [ -f "bkp.${file}" ] || cp "${file}" "bkp.${file}"
    done

    sed -i "s/RELEASE/${release}/g" Dockerfile*
    sed -i "s/RELEASE/${release}/g" docker-compose*.yml

    for compose_file in docker-compose*.yml; do
        docker-compose -f "${compose_file}" rm -f
        docker-compose -f "${compose_file}" build
        docker-compose -f "${compose_file}" push
    done

    for file in Dockerfile* docker-compose*.yml; do
        [ -f "bkp.${file}" ] && mv "bkp.${file}" "${file}"
    done
done
)
