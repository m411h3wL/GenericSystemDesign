#!/bin/bash
# Pops open the system design diagram in its own window.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILE="$DIR/index.html"

if open -a "Google Chrome" --args --app="file://$FILE" --window-size=980,560 2>/dev/null; then
  exit 0
fi

open "$FILE"
