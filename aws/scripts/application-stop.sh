#!/bin/bash
set -x

# System control will return either "active" or "inactive".
autodeploy_running=$(systemctl is-active autodeploy)
if [ "$autodeploy_running" == "active" ]; then
    service autodeploy stop
fi