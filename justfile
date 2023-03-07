# List available commands
_default:
  just --choose --chooser "fzf +s -x --tac --cycle"

help:
	just --list


# Generate documentation
doc:
    #!/usr/bin/env bash
    export DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    export COMMIT=$(git rev-parse HEAD)
    for chain in polkadot substrate cumulus; do
        echo "Generating doc for $chain..."
        tera --env --env-key env --template templates/template.md.tera ruled_labels/specs_${chain}.yaml > ./docs/doc_${chain}.md
    done
