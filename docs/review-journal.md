# Review Journal

The review surface for `meridian-sys-lock-index` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 253, lane `ship`
- `stress`: `dirty state`, score 201, lane `ship`
- `edge`: `guard slack`, score 161, lane `ship`
- `recovery`: `layout drift`, score 194, lane `ship`
- `stale`: `allocation pressure`, score 163, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
