#!/bin/sh

echo "pwd -> $(pwd)"
echo "list /github/workflow -> $(ls -a /github/workflow)"
echo "list /github/workspace -> $(ls -a /github/workspace)"
echo "list /github/home -> $(ls -a /github/home)"
search_result=$(grep -r -i -n "password[=:]" /github/workflow)

if [[ $search_result ]]; then
    echo "Sensitive data found! Check it out! \n $search_result"
    exit 1
else
    echo "Sensitive data not found, everytings ok"
fi
