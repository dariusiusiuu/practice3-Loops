#!/bin/bash

url="https://agora.xtec.cat/ies-sabadell/"

while true; do
    if curl -s --head --request GET "$url" | grep "200 OK" > /dev/null; then
        xdg-open "$url" > /dev/null 2>&1
        break
    else
        echo "No internet connection. Retrying in 5 seconds..."
        sleep 5
    fi
done
