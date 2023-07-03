#!/bin/bash

source_directory="/content/test_colab/"
destination_directory="/content/working/"

for file in "$source_directory"/*.ipynb; do
  if [ ! -f "$destination_directory/$(basename "$file")" ]; then
    cp "$file" "$destination_directory"
  fi
done
