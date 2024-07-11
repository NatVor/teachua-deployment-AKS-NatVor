#!/bin/bash

API_ENDPOINT="http://dns-classic-penguin-ejbzzbz1.hcp.eastus.azmk8s.io"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $API_ENDPOINT)

if [ $RESPONSE -eq 200 ]; then
    echo "API is reachable, integration test passed."
    exit 0
else
    echo "API returned status $RESPONSE, integration test failed."
    exit 1
fi
