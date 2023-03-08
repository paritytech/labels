#!/usr/bin/env bash

export DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
export COMMIT=$(git rev-parse HEAD)

mkdir -p ./docs/src

for chain in polkadot substrate cumulus; do
    echo "Generating doc for $chain..."
    tera --include --env --env-key env --template templates/template.md.tera ruled_labels/specs_${chain}.yaml >./docs/src/doc_${chain}.md
done