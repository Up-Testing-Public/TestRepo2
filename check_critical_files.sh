#!/bin/sh

CRITICAL_FILES=(
  ".github/workflows/semgrep.yml"
)

for file in "${CRITICAL_FILES[@]}"; do
  if [ ! -f "$file" ]; then
    echo "Critical file $file is missing"
    exit 1
  fi
done

