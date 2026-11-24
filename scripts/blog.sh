#!/bin/bash

# This is a script to manage my jekyll blog using docker.

# Get the project root directory (one level up from this script)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ARGS=("$@")
if [[ "${1:-}" == "serve" || "${1:-}" == "s" ]]; then
  has_host=false
  for arg in "$@"; do
    if [[ "$arg" == "--host" || "$arg" == --host=* || "$arg" == "-H" ]]; then
      has_host=true
      break
    fi
  done
  if [[ "$has_host" == false ]]; then
    ARGS+=("--host" "0.0.0.0")
  fi
fi

export RUBY_IMAGE=ruby:3.1
DOCKER_TTY_FLAGS=()
if [[ -t 0 && -t 1 ]]; then
  DOCKER_TTY_FLAGS+=("-it")
fi

docker run --rm "${DOCKER_TTY_FLAGS[@]}" \
  -v "$PROJECT_ROOT:/srv/jekyll" \
  -v "jekyll_bundle:/usr/local/bundle" \
  -w /srv/jekyll \
  -p 4000:4000 \
  "$RUBY_IMAGE" \
  bash -c 'bundle check || bundle install; bundle exec jekyll "$@"' _ "${ARGS[@]}"
