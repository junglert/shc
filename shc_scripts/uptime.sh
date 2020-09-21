#!/bin/bash

# get the distro flavour
OS_flavour=$(grep "ID_LIKE" /etc/os-release | cut -d'=' -f2 | sed 's/"//g')
# get uptime (removed extra foo)
uptime=$(uptime | awk -F "up" '{print $2}' | cut -d, -f1 | sed 's/^ *//g')

if $(grep -i raspbian /etc/os-release)
then
    echo "n/a"
else
    echo ${uptime}
fi