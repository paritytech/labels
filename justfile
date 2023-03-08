# List available commands
_default:
  just --choose --chooser "fzf +s -x --tac --cycle"

help:
	just --list

# Generate documentation
doc:
  ./scripts/build-doc.sh

book: doc
  ./scripts/generate_book.sh
  open docs/book/index.html
