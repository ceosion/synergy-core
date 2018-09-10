#!/bin/bash
read -p "Enter Server IP: " server
echo "Will connect to server: ${server}"
./synergy-core --client \
    --no-daemon \
    ${server}
