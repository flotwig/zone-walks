#!/bin/bash

curl https://raw.githubusercontent.com/flotwig/monoidic-TLDR2/master/walkable_zones.md | \
    cut -d "\`" -f2 -s - | \
    cut -d "." -f1 | \
    grep -v -f ./ignore-tld-list.txt | \
    jq -nR '{ zones: [ inputs | split("\n") | add | { zone: strings }] }' > ./walkable-zones.json
