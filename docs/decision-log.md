# Decision Log

## D001: Use Module-Level Oracle

Decision:

```text
Use module-level threshold evidence instead of raw full-ROM diff.
```

Reason:

```text
Raw ROM diff between stock 322 and golden 322 was too large and likely contained repack/layout/compression noise.
```

## D002: Deprecate 428-S95 Branch Skip

Decision:

```text
Deprecate 428-S95 branch-skip hypothesis.
```

Reason:

```text
It produced a clean repack but did not match the known 322 threshold behavior.
```

## D003: Promote 428-T130

Decision:

```text
Promote 428-T130 as the current best documented candidate.
```

Evidence:

```text
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
1B extract-back matched patched 428 threshold module.
21 extract-back matched 428 MultiLanguage baseline.
```

## D004: Reject Dirty 622 Path

Decision:

```text
Reject the dirty 622 MMTool path.
```

Reason:

```text
mod_21 drifted outside the expected 622 baseline.
```

## D005: Stop Modified Firmware Testing Until Recovery

Decision:

```text
Recover the board with stock firmware before any further modified firmware work.
```

Reason:

```text
The board entered failed POST state after an interrupted flash attempt.
```
