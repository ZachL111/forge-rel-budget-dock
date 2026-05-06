# forge-rel-budget-dock

`forge-rel-budget-dock` is a Solidity project in reliability. Its focus is to develop a Solidity command-oriented project for budget scenarios with layout fixtures, stable geometry snapshots, and single-node deterministic mode.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Forge Rel Budget Dock Review Notes

Start with `failure width` and `budget pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/forge-rel-budget-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `failure width` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Solidity checks add a pure review lens and Foundry coverage.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Boundaries

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
