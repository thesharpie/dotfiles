#!/usr/bin/env bash

dir="${1:-$HOME}"
"$(dirname "$0")/launch-on-new-workspace.sh" ghostty --class=yazi --working-directory="$dir" -e yazi
