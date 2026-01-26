#!/bin/bash

# Run each script and capture its output
camera=$(~/dev/env/devenv.archive/i3/scripts/camera.sh)
touchpad=$(~/dev/env/devenv.archive/i3/scripts/touchpad.sh)
caps_lock=$(~/dev/env/devenv.archive/i3/scripts/caps_lock.sh)
num_lock=$(~/dev/env/devenv.archive/i3/scripts/num_lock.sh)
mic=$(~/dev/env/devenv.archive/i3/scripts/microphone.sh)
flight_mode=$(~/dev/env/devenv.archive/i3/scripts/flight_mode.sh)
current_power_profile=$(~/dev/env/devenv.archive/i3/scripts/current_power_profile.sh)

# Combine all outputs into a single line
echo "$camera$touchpad$caps_lock$num_lock$mic$flight_mode$current_power_profile"
