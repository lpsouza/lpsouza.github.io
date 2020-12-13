#!/bin/sh

docker run --rm -ti -v "$PWD:/srv/jekyll" -p 4000:4000 --name blog jekyll/jekyll jekyll serve --no-watch
