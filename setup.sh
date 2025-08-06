#!/bin/bash

set -e

# Get the directory of this script, which is the project root
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Define the order of tool setups
TOOL_ORDER=(
  "homebrew"
  "nvm"
  "pyenv"
  "goenv"
  "vim"
)

# Verify that all tool directories exist
for tool in "${TOOL_ORDER[@]}"; do
  tool_dir="$SCRIPT_DIR/tools/$tool"
  if [ ! -d "$tool_dir" ]; then
    echo "Error: Tool directory for '$tool' not found at $tool_dir" >&2
    exit 1
  fi
done

# Run the setup scripts in the specified order
for tool in "${TOOL_ORDER[@]}"; do
  tool_dir="$SCRIPT_DIR/tools/$tool"
  if [ -f "${tool_dir}/setup.sh" ]; then
    echo "Running setup for $tool..."
    (cd "$tool_dir" && ./setup.sh)
  else
    echo "Setup script for $tool not found, skipping."
  fi
done

echo "All setup scripts completed."
