# Field Notes

This note keeps the systems programming assumptions visible beside the checks.

The domain cases cover `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`baseline` is the strongest case at 253 on `allocation pressure`. `edge` is the cautious anchor at 161 on `guard slack`.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
