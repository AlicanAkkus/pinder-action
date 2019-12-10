#!/bin/sh

printenv
search_result=$(grep -r -i -n "password[=:]" /github/workspace)

if [[ $search_result ]]; then
    echo "Sensitive data found! Check it out! \n $search_result"
    exit 1
else
    echo "Sensitive data not found, everytings ok"
fi
