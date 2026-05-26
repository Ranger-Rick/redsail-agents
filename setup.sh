#!/bin/bash

# Run from root directory. This script will copy the relevant contents of the redsail-agents up one directory

cp -Rf redsail-agents/.agents ./.agents

# Opencode
if [ ! -f opencode.json ]; then
  cp redsail-agents/opencode.json ./opencode.json
  exit 0
fi

jq -s '.[0] * .[1]' redsail-agents/opencode.json opencode.json > opencode.json.tmp
mv opencode.json.tmp opencode.json

# TODO: Configure Claude, GitHub Copilot / VsCode
