#!/bin/bash

# Use sensors to get fan speeds
FAN1=$(sensors | grep -m1 'fan1' | awk '{print $2}')

# Check if fan speeds were detected
if [ -z "$FAN1" ]; then
    FAN1="N/A"
fi

# Output fan speeds in a compact format with separator
echo " 󰈐  $FAN1 RPM "
