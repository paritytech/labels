#!/usr/bin/env bash

export DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
export COMMIT=$(git rev-parse HEAD)

mkdir -p ./docs/src

repo=$1
repo=${repo:-"polkadot-sdk"}

for chain in $repo; do
    echo "Generating doc for $chain..."
    tera --include --env --env-key env --template templates/template.md.tera ruled_labels/specs_${chain}.yaml >./docs/src/doc_${chain}.md
done
