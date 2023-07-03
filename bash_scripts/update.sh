#!/bin/bash
cd /content/test_colab
git reset --hard HEAD && git pull 

destination="/content/working/source"

ls | grep -E '.ipynb' | while read -r file; do
  cp "$file" "$destination/$new_filename"
done
