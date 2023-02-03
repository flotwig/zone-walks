#!/bin/bash
set +e

WC=$(wc -l ./lists/*.txt)
TOTAL=$(tail -n1 <<<"$WC" | awk '{print $1}')
WC=$(head -n-1 <<<"$WC" | sort -rbn)

echo "$WC" | \
    jq --arg TOTAL $TOTAL -nR '{
        zones: [ inputs | capture( " *(?<domains>[0-9]+) +./lists/(?<zone>[a-z0-9-]+)" ) ],
        total: $TOTAL
    }' > ./stats.json

chevron -d ./stats.json ./README.md.template > ./README.md
