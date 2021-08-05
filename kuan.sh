#! /usr/bin/bash

get_synonym() {
        curl -s https://www.dictionaryapi.com/api/v3/references/thesaurus/json/$1?key=$MW_THESAURUS | jq .[].meta.syns
}

get_definition() {
        curl -s https://www.dictionaryapi.com/api/v3/references/collegiate/json/$1?key=$MW_DICTIONARY | jq .[].shortdef
}

echo "Other words for $1" ; echo "$(get_synonym $1)"
echo "========================"
echo "Definiton of $1" ; echo "$(get_definition $1)"
