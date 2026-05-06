# Forge Rel Budget Dock Walkthrough

This note is the quickest way to read the extra review model in `forge-rel-budget-dock`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 164 | ship |
| stress | failure width | 190 | ship |
| edge | recovery gap | 159 | ship |
| recovery | runbook drift | 189 | ship |
| stale | budget pressure | 133 | watch |

Start with `stress` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `failure width` against `budget pressure`, not the raw score alone.
