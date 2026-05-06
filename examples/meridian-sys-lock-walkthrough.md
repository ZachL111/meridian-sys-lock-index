# Meridian Sys Lock Index Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 253 | ship |
| stress | dirty state | 201 | ship |
| edge | guard slack | 161 | ship |
| recovery | layout drift | 194 | ship |
| stale | allocation pressure | 163 | ship |

Start with `baseline` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`baseline` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
