#!/bin/bash

# Check if the autoclicker is running
if pgrep -x "clicker" >/dev/null; then
	# If running, terminate the service
	killall clicker
else
	# If not running, start the autoclicker
	clicker -d 30 &
fi
