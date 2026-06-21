# DBYTE A780L3B BIOS 95W Research Showcase

## One-Line Summary

A firmware reverse-engineering research archive for the BIOSTAR A780L3B / 78LDPxxx AMI BIOS family, focused on the 95W CPU power warning path and the threshold oracle behind a known 322-derived artifact.

## Highlight

The key technical result is the threshold strategy:

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

This supersedes the earlier branch-skip hypothesis:

```text
428-S95 branch skip at 0x019249
```

## Project Strengths

```text
- Golden 322 oracle identified and hash-locked
- 428-T130 candidate extract-back verified
- 622 dirty repack path documented and rejected
- Failed flash event recorded as postmortem, not hidden
- Stock recovery hashes documented
- Local artifact manifest separated from repository text
- Firmware blobs tracked by SHA256 and role, not mixed into the docs tree
```

## Current Best Artifact

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
Verifier: PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

## Golden Oracle

```text
a780l3b-322-threshold-130000.rom
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
Role: golden 322 threshold oracle
```

## Recovery Baseline

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
Role: stock 428 recovery baseline
```

## Final Engineering Position

The research artifact is complete as a documented firmware analysis trail.

The physical board recovery path is separate:

```text
Use stock firmware only.
Recover using CH341A / SPI programmer or a repair shop BIOS chip flash service.
Do not continue modified firmware testing until stock POST is restored.
```
