#!/bin/bash
# Script to export Markdown cheat sheet to PDF
set -e

INPUT="LINUX_COMMAND_CHEAT_SHEET.md"
OUTPUT="cheatsheet.pdf"

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found!"
  exit 1
fi

echo "Generating PDF from $INPUT ..."
pandoc "$INPUT" -o "$OUTPUT" && echo "PDF generated successfully: $OUTPUT"
