#!/bin/bash

source_directory="/test_colab/"
destination_directory="/working/"

for file in "$source_directory"/*.ipynb; do
  if [ ! -f "$destination_directory/$(basename "$file")" ]; then
    cp "$file" "$destination_directory"
  fi
done
