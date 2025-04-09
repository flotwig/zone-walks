#!/bin/bash
set +e

curl https://raw.githubusercontent.com/flotwig/monoidic-TLDR2/master/walkable_zones.md | \
    cut -d "\`" -f2 -s - | \
    cut -d "." -f1 | \
    #grep -v -f ./ignore-tld-list.txt | \
    jq -nR '{ zones: [ inputs | split("\n") | add | { zone: strings }] }' > ./walkable-zones.json

chevron -l "[[" -r "]]" -d ./walkable-zones.json ./.github/workflows/walk.yaml.template > ./.github/workflows/walk.yaml
