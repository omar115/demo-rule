#!/usr/bin/env bash

# Get the list of tags
tags=$(git tag)

# Loop through the tags
for tag in $tags; do
    # Generate documentation for the current tag
    sphinx-build -b html -D version=$tag . _build/html/$tag
done
