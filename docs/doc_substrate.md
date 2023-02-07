# Label Documentation for the repo `paritytech/substrate`

This document is generated automatically based on commit `b5ccde45` and was last updated on `2023-02-07T12:01:41Z`.

The source data can be found in the [`ruled_labels`](../ruled_labels) folder of the repository. Those rules are processed by
[ruled_labels](https://github.com/paritytech/ruled_labels) and **all** rules must be satisfied.

## Description

This is the documentation for `paritytech/substrate` version `v0.0.1`.
It contains `66` labels and `8` rules.

Import from paritytech/substrate

## Rules

<!-- single_b -->
- `Require a single Release (B) label`
  - require: {"!one_of":["B*"]}

<!-- require_one_c_when_b1 -->
- `Release mentions need criticality (C)`
  - when: {"!one_of":["B1"]}
  - require: {"!one_of":["C*"]}

<!-- require_t0_or_t1_when_b1 -->
- `Release mentions need a topic "node", "runtime" or "API"`
  - when: {"!one_of":["B1"]}
  - require: {"!one_of":["T0","T1","T2"]}

<!-- allow_multiple_t_when_b1 -->
- `Release mentions can have several topics`
  - when: {"!one_of":["B1"]}
  - require: {"!some_of":["T*"]}

<!-- single_s -->
- `One single issue status (S) label allowed`
  - when: {"!some_of":["S*"]}
  - require: {"!one_of":["S*"]}

<!-- single_u -->
- `One single urgency status (U) label allowed`
  - when: {"!some_of":["U*"]}
  - require: {"!one_of":["U*"]}

<!-- single_c -->
- `One single criticality (C) label allowed`
  - when: {"!some_of":["C*"]}
  - require: {"!one_of":["C*"]}

<!-- single_d -->
- `Require single audit (D) label allowed`
  - require: {"!one_of":["D*"]}



## Labels
### `A␣` - Action labels: used with GHA and trigger a certain process
- `A0-please_review`: Pull request needs code review.
- `A1-needs_burnin`: Pull request needs to be tested on a live validator node before merge. DevOps is notified via matrix
- `A2-insubstantial`: Pull request requires no code review (e.g., a sub-repository hash update).
- `A3-in_progress`: Pull request is in progress. No review needed at this stage.
- `A4-companion`: A PR that should be considered alongside another (usually more comprehensive and detailed) PR.
- `A5-stale`: Pull request did not receive any updates in a long time. No review needed at this stage. Close it.
- `A6-backport`: Pull request is already reviewed well in another branch.

### `B␣` - Release note labels: Determines if a PR should be part of the release notes or not.
- `B0-silent`: Changes should not be mentioned in any release notes
- `B1-note_worthy`: Changes should be noted in the release notes

### `C␣` - Criticality: How critical is this change? Which impact does it have on the builders?
- `C1-low`: PR touches the given topic and has a low impact on builders.
- `C3-medium`: PR touches the given topic and has a medium impact on builders.
- `C5-high`: PR touches the given topic and has a high impact on builders.
- `C7-critical`: PR touches the given topic and has a critical impact on builders.

### `D␣` - Auditing labels: Required when there were changes in the paths `^frame/`, `^primitives/`
- `D1-audited 👍`: PR contains changes to fund-managing logic that has been properly reviewed and externally audited.
- `D2-notlive 💤`: PR contains changes in a runtime directory that is not deployed to a chain that requires an audit.
- `D3-trivial 🧸`: PR contains trivial changes in a runtime directory that do not require an audit
- `D5-nicetohaveaudit ⚠️`: PR contains trivial changes to logic that should be properly reviewed.
- `D9-needsaudit 👮`: PR contains changes to fund-managing logic that should be properly reviewed and externally audited

### `E␣` - Upgrade dependencies: 
- `E0-runtime_migration`: PR introduces code that might require downstream chains to run a runtime upgrade.
- `E1-database_migration`: PR introduces code that does a one-way migration of the database.
- `E2-dependencies`: Pull requests that update a dependency file.
- `E3-host_functions`: PR adds new host functions which requires a node release before a runtime upgrade.
- `E4-node_first_update`: This is a runtime change that will require all nodes to be update BEFORE the runtime upgrade.
- `E5-needs_cumulus_pr`: This is an issue that needs to be implemented upstream in Cumulus.
- `E6-needs_polkadot_pr`: This is an issue that needs to be implemented upstream in Polkadot.

### `F␣` - Fail: Change breaks some part of the code
- `F0-breaks_everything`: This change breaks the underlying networking, sync or related and thus will cause a fork.
- `F1-breaks_authoring`: This change breaks authorities or authoring code.
- `F2-breaks_consensus`: This change breaks consensus or consensus code.
- `F3-breaks_API`: This PR changes public API; next release should be major.

### `I␣` - Issues related labels: 
- `I0-consensus`: Issue can lead to a consensus failure.
- `I1-panic`: The node panics and exits without proper error handling.
- `I2-security`: The node fails to follow expected, security-sensitive, behaviour.
- `I3-bug`: The node fails to follow expected behavior.
- `I4-annoyance`: The node behaves within expectations, however this “expected behaviour” itself is at issue.
- `I5-tests`: Tests need fixing, improving or augmenting.
- `I6-documentation`: Documentation needs fixing, improving or augmenting.
- `I7-refactor`: Code needs refactoring.
- `I8-footprint`: An enhancement to provide a smaller (system load, memory, network or disk) footprint.
- `I9-optimisation`: An enhancement to provide better overall performance in terms of time-to-completion for a task.

### `J␣` - Just a continuation of the issue related labels: 
- `J0-enhancement`: An additional feature request.
- `J1-meta`: A specific issue for grouping tasks or bugs of a specific category.
- `J2-unconfirmed`: Issue might be valid, but it's not yet known.
- `J3-intended`: Issue describes a behavior which turns out to work as intended. Closer should explain why.
- `J4-duplicate`: Issue is a duplicate. Closer should comment with a link to the duplicate.
- `J5-wont_fix`: Issue is in principle valid, but this project will not address it. Closer should explain why.
- `J6-invalid`: Issue is invalid. Closer should comment why.

### `S␣` - Status of an issue/PR: 
- `S0-design`: Issue is in the design stage.
- `S1-implement`: Issue is in the implementation stage.
- `S2-test/monitor`: Issue is in the testing stage.
- `S3-deploy`: Issue is in the deployment stage
- `S4-blocked`: Issue is blocked, see comments for further information.

### `T␣` - Topics: PR/Issue is related to this topic
- `T0-node`: This PR/Issue is related to the topic “node”.
- `T1-runtime`: This PR/Issue is related to the topic “runtime”.
- `T2-API`: This PR/Issue is related to APIs.
- `T3-relay_chain`: This PR/Issue is related to the Relay Chain.
- `T4-smart_contracts`: This PR/Issue is related to smart contracts.
- `T5-parachains`: This PR/Issue is related to Parachains.
- `T6-XCM`: This PR/Issue is related to XCM.
- `T7-system_parachains`: This PR/Issue is related to System Parachains.
- `T8-bridges`: This PR/Issue is related to bridges.
- `T9-release`: This PR/Issue is related to topics touching the release notes.

### `U␣` - Urgency: In what time manner does this issue need to be resolved?
- `U0-drop_everything`: Everyone should address the issue now.
- `U1-asap`: No need to stop dead in your tracks, however issue should be addressed as soon as possible.
- `U2-some_time_soon`: Issue is worth doing soon.
- `U3-nice_to_have`: Issue is worth doing eventually.
- `U4-some_day_maybe`: Issue might be worth doing eventually.


