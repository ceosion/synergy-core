#!/bin/bash

echo ""
echo "    Synergy Core 2 (BETA) - built from source"
echo ""
echo "Starting in server mode..."
echo ""

# TODO allow config to be specified as script argument and skip the next part
# List the available conf files and prompt for selection
listOfConfs=($(ls *.conf))
index=0
userSelection=-1
while [ ${userSelection} -eq -1 ]
do
    echo "Select server configuration to use:"
    for conf in ${listOfConfs[@]}; do
        echo "  ${index}: ${conf}"
        index=$(( ${index} + 1 ))
    done
    read userSelection
    echo "You selected index: ${userSelection}"
    echo "You selected: ${listOfConfs[${userSelection}]}"
    if [ ${userSelection} -gt $((${#listOfConfs[@]} - 1)) ]
    then
        echo "INVALID SELECTION, please try again!"
        echo ""
        userSelection=-1
        index=0
    fi
done
echo ""

echo Try having clients connect to one of the following:
ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'

# Start Synergy in server mode
# Bound to all network interfaces
# Using the configuration selected in the previous step
# In the foreground so we can see all output
./synergy-core --server \
    --address 0.0.0.0 \
    --config ${listOfConfs[${userSelection}]} \
    --no-daemon
