#!/bin/bash

vermelho="\033[0;31m"
verde="\033[0;32m"

URL_LIST="urls.txt"

readarray URLS < ${URL_LIST}

for URL in ${URLS[@]}
do
    RESPONSE="$(curl -s -I ${URL})"

    STATUS=$(echo $RESPONSE | grep "HTTP" | cut -d " " -f 2)

    if [[ ${STATUS} -eq "200" ]]
    then
        echo $URL " [200 - OK] "
    fi
done