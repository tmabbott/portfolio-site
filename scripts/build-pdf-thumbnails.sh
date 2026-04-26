#!/bin/zsh

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PDF_DIR="$ROOT_DIR/assets/samples"
OUTPUT_DIR="$PDF_DIR/thumbnails"

mkdir -p "$OUTPUT_DIR"

if command -v magick >/dev/null 2>&1; then
  renderer="magick"
elif command -v sips >/dev/null 2>&1; then
  renderer="sips"
else
  echo "Install ImageMagick or run this script on macOS with sips available." >&2
  exit 1
fi

for pdf_file in "$PDF_DIR"/*.pdf; do
  base_name="${pdf_file:t:r}"

  if [[ "$renderer" == "magick" ]]; then
    magick -density 144 "${pdf_file}[0]" \
      -thumbnail 700x900 \
      -background white \
      -alpha remove \
      -strip \
      -quality 82 \
      "$OUTPUT_DIR/$base_name.jpg"
  else
    sips -s format jpeg -s formatOptions 82 -Z 900 \
      "$pdf_file" \
      --out "$OUTPUT_DIR/$base_name.jpg" >/dev/null
  fi
done
