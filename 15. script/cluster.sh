#!/bin/bash

# REQUIEREMENT
# -- bash, jq
# Debian / Ubuntu
# apt install bash jq
# Manjaro
# pamac install jq bash

list_json=$(multipass list --format=json)
cluster_info=('SRVKUBE1' 'SRVKUBE2' 'SRVKUBE3')

echo '==== MANAGEMENT KUBERNETES CLUSTER ===='
for srv in ${cluster_info[@]};
do
  status=$( echo $list_json | jq --arg name $srv -r '.list[] | select(.name==$name) | .state'  )
  if [ "$1" == "stop" ]; then
    echo "Check status of VM : $srv -- STATUS : $status"

    if [ $status == "Running" ]; then
      multipass stop $srv
      echo "$srv successfully stopped !"
    else
      echo "$srv already stopped !"
    fi
  else
    echo "Check status of VM : $srv -- STATUS : $status"

    if [ $status == "Stopped" ]; then
      multipass start $srv
      echo "$srv successfully started !"
    else
      echo "$srv already started !"
    fi
  fi
done
