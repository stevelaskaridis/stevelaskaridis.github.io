#!/bin/sh
set -e

config="_config.yml"

if [ -f "$config" ]; then
  # Force gem-based theme for Docker builds.
  sed -i "s/^[[:space:]]*#[[:space:]]*theme:[[:space:]]*jekyll-theme-hydejack/theme: jekyll-theme-hydejack/" "$config"
  sed -i "s/^[[:space:]]*remote_theme:[[:space:]]*hydecorp\\/hydejack@v9/# remote_theme: hydecorp\\/hydejack@v9/" "$config"
fi

exec "$@"
