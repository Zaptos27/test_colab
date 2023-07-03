#!/bin/bash
git pull 

destination="../test2/"

git status --porcelain | grep -E '^??' | cut -c4- | while read -r file; do
  filename=$(basename "$file")
  extension="${filename##*.}"
  filename="${filename%.*}"
  new_filename="${filename}(1).${extension}"
  cp "$file" "$destination/$new_filename"
done
