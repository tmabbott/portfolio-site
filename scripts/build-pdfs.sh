#!/bin/zsh

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SOURCE_DIR="$ROOT_DIR/content/samples"
OUTPUT_DIR="$ROOT_DIR/assets/samples"

for source_file in "$SOURCE_DIR"/*.txt; do
  base_name="${source_file:t:r}"
  cupsfilter -m application/pdf "$source_file" > "$OUTPUT_DIR/$base_name.pdf" 2>/dev/null
done
