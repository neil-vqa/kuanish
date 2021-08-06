printf "$(curl -s http://api.urbandictionary.com/v0/define?term=$1 | jq ".list[]" 2> /dev/null || echo "Definitions not available.")"
