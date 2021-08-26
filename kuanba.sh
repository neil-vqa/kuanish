#!/usr/bin/bash

printf "$(curl -s https://api.urbandictionary.com/v0/define?term=$1 | \
jq '[.list[] | {"definition": .definition, "thumbs_up": .thumbs_up, "example": .example}] | sort_by(-.thumbs_up)' || \
echo 'Definitions not available.')" | less
