#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Create data directories used by cost tracking and presets
mkdir -p "$HOME/.banana/presets"
mkdir -p "$HOME/Documents/nanobanana_generated"

# Verify Python 3 is available (required for fallback scripts)
python3 --version

echo "Banana Claude environment ready."
