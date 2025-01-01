#!/usr/bin/env bash  

while IFS="" read -r line || [ -n "$p" ]
do
  printf '%s\n' "$line"
  id=$(echo $line | awk -F, '{print $1}')
  mod_name="@$(echo $line | awk -F, '{print $2}')"
  mv -v ~steam/arma3/$mod_name/$id/* ~steam/arma3/$mod_name
done < mods.txt
