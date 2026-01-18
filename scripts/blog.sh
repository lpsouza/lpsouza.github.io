#!/bin/bash

# This is a script to manage my jekyll blog using docker.

# Get the project root directory (one level up from this script)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

export JEKYLL_VERSION=4.0
docker run --rm -v "$PROJECT_ROOT:/srv/jekyll" -it -p 4000:4000 jekyll/jekyll:$JEKYLL_VERSION jekyll "$@"
