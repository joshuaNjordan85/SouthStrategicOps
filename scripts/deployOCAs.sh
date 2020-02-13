##!/usr/bin/env bash

# Get all the dot files in an iterator
for f in $(pwd)/*.dot
do
  png=$(echo $f | sed 's/dot/dot.png/')
  match=$(gsutil ls "gs://opportunity-as-code/${png}")
  if [[ $match ]]; then
    echo "already exists"
  else
    # Create a png
    dot -Tpng $(pwd)/$f -o $(pwd)/$png
    # Push it up to GCP
    gsutil cp $(pwd)/$png gs://opportunity-as-code/$png
  fi
done
