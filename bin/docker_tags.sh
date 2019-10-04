#!/bin/bash
# List the available tags for a given docker image (e.g. klamemo/couchdb)
if [[ $# < 1 ]]; then
    echo "You must provide a Docker image to search on."
    exit 1
fi

curl -s -S "https://registry.hub.docker.com/v2/repositories/$@/tags/" | jq '."results"[]["name"]' |sort