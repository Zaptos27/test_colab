#!/bin/bash
cd ../test_colab
git reset --hard HEAD && git pull 

destination="/working/source"

ls | grep -E '.ipynb' | while read -r file; do
  cp "$file" "$destination/$new_filename"
done
