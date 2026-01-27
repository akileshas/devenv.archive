#!/usr/bin/env bash

PAMIXER="pamixer"

# Exit silently if pamixer is missing
[ ! -x "$PAMIXER" ] && exit 0

volume=$($PAMIXER --get-volume)
mute=$($PAMIXER --get-mute)

if [ "$mute" = "true" ]; then
  echo " muted"
else
  if [ "$volume" -ge 80 ]; then
    icon=""
  elif [ "$volume" -ge 40 ]; then
    icon=""
  else
    icon=""
  fi
  echo "$icon $volume%"
fi
