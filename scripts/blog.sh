#!/bin/bash

# This is a script to manage my jekyll blog using docker.

# Get the project root directory (one level up from this script)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ARGS=("$@")
DOCKER_PORT_FLAGS=()
if [[ "${1:-}" == "serve" || "${1:-}" == "s" ]]; then
  DOCKER_PORT_FLAGS+=("-p" "4000:4000" "-p" "35729:35729")
  has_host=false
  has_unpublished=false
  has_future=false
  has_livereload=false
  for arg in "$@"; do
    case "$arg" in
      --host|--host=*|-H) has_host=true ;;
      --unpublished) has_unpublished=true ;;
      --future) has_future=true ;;
      --livereload|--no-livereload|-l) has_livereload=true ;;
    esac
  done
  [[ "$has_host" == false ]] && ARGS+=("--host" "0.0.0.0")
  [[ "$has_unpublished" == false ]] && ARGS+=("--unpublished")
  [[ "$has_future" == false ]] && ARGS+=("--future")
  [[ "$has_livereload" == false ]] && ARGS+=("--livereload")
fi

export RUBY_IMAGE=ruby:3.1
DOCKER_TTY_FLAGS=()
if [[ -t 0 && -t 1 ]]; then
  DOCKER_TTY_FLAGS+=("-it")
fi

docker run --rm "${DOCKER_TTY_FLAGS[@]}" \
  "${DOCKER_PORT_FLAGS[@]}" \
  -v "$PROJECT_ROOT:/srv/jekyll" \
  -v "jekyll_bundle:/usr/local/bundle" \
  -w /srv/jekyll \
  "$RUBY_IMAGE" \
  bash -c 'bundle check || bundle install; bundle exec jekyll "$@"' _ "${ARGS[@]}"
