# This is a script to manage my jekyll blog using docker.

export JEKYLL_VERSION=4.0
docker run --rm --volume="$JEKYLL_BASEDIR:/srv/jekyll" -it jekyll/jekyll:$JEKYLL_VERSION jekyll $@
