#!/usr/bin/env bash

# Generate date, commit and footer
export DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
export COMMIT=$(git rev-parse HEAD)

tera --template templates/home.md.tera --env-only --include --env --env-key env > docs/src/HOME.md

mdbook build docs/

echo "You may now open your book with:"
echo "open docs/book/index.html"
