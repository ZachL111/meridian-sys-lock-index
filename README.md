# meridian-sys-lock-index

`meridian-sys-lock-index` is a R project in systems programming. Its focus is to build an R toolkit that studies lock behavior through safe and unsafe fixtures, with remediation hints and fixture-scale datasets.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how allocation pressure and guard slack should influence a review result.

## Meridian Sys Lock Index Review Notes

Start with `allocation pressure` and `guard slack`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-sys-lock-walkthrough.md` walks through the case spread.
- The R code includes a review path for `allocation pressure` and `guard slack`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added R path is deliberately direct, with fixtures doing most of the explaining.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `baseline` at 253, which lands in `ship`. The most cautious case is `edge` at 161, which lands in `ship`.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
