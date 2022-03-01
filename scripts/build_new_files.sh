#!/usr/bin/env bash

git diff --name-only origin/main | while read FILE ; do
    if [ -f ${FILE} ];
    then
        NAME=$(basename ${FILE})
        if [[ ${NAME} =~ (.*)?\.lean ]];
        then
            lean --json -T100000 ${FILE} | python3 scripts/detect_errors.py
        fi
    fi
done    
