# FAQ

## How is a label interpreted ?

You may see labels defined as `S0-design`. It is made of a label code: `S`, a number: `0` and some description.
The rules **only apply to the part of the label without the description and the label above will simply be considered as `S0`.
Should the description change, the rules would remain unaffected.

## What are rules ?

Rules are defined in a YAML files and describe:
- the name of the rule
- the conditions of the rule (for instance, some rules only apply if a specific label is present)
- the conditions for a set of labels to be valid. For instance, you will not be able to have `C1-low` and `C5-high` for a given PR. You will have to chose one or the other and the rules will enforce this
