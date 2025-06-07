#!/usr/bin/env bash
# init-submodules.sh - Initialize and update all git submodules

set -euo pipefail

# Show help if requested
if [[ ${1:-} == "--help" ]]; then
  echo "Usage: ./scripts/init-submodules.sh"
  echo "Initializes and updates all git submodules recursively."
  exit 0
fi

# Initialize and update submodules
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git submodule update --init --recursive
  echo "Git submodules initialized and updated." 
else
  echo "Error: not inside a git repository" >&2
  exit 1
fi
