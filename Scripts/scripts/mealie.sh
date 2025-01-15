#!/bin/bash

credpath="$HOME/mealiecreds.json"
url=$(jq -r ".url" $credpath)
token=$(jq -r ".token" $credpath)
date=$(date +"%Y-%m-%d")
res=$(curl -s -X "GET" "$url/api/households/mealplans?start_date=$date&end_date=$date&perPage=1" -H "accept: application/json" -H "Authorization: Bearer $token")

echo $res | jq -r ".items[] | .recipe.name"
