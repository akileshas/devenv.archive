#!/bin/bash

# Get the static hostname
HOSTNAME=$(hostnamectl --static)

if [ "$HOSTNAME" = "asa" ]; then
    xinput set-prop "ELAN0688:00 04F3:320B Touchpad" "libinput Tapping Enabled" 1
    xinput set-prop "ELAN0688:00 04F3:320B Touchpad" "libinput Natural Scrolling Enabled" 1
fi
