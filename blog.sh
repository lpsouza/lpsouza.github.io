#!/bin/bash

# This is a script to manage my jekyll blog using docker.

export JEKYLL_VERSION=4.0
docker run --rm -v "./:/srv/jekyll" -it -p 4000:4000 jekyll/jekyll:$JEKYLL_VERSION jekyll $@
