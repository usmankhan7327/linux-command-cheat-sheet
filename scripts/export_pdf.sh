#!/bin/bash
# Script to export Markdown cheat sheet to PDF

INPUT="LINUX_COMMAND_CHEAT_SHEET.md"
OUTPUT="cheatsheet.pdf"

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found!"
  exit 1
fi

echo "Generating PDF from $INPUT ..."
pandoc "$INPUT" -o "$OUTPUT"

if [ $? -eq 0 ]; then
  echo "PDF generated successfully: $OUTPUT"
else
  echo "PDF generation failed!"
fi
