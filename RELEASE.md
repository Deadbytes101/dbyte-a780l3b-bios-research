# v0.1 BIOS Research Snapshot

Canonical release note for the DBYTE A780L3B BIOS 95W research archive.

## Tag Target

```text
v0.1-bios-research
```

## Title

```text
v0.1 BIOS Research Snapshot
```

## Summary

This snapshot captures the first complete research archive for the BIOSTAR A780L3B / 78LDPxxx 95W threshold investigation.

## Key Result

```text
Threshold strategy:
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

## Golden 322 Oracle

```text
a780l3b-322-threshold-130000.rom
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
```

## Best Documented 428 Candidate

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
Verifier: PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

## Recovery Baseline

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

## Important Boundaries

```text
This is a research archive, not a public firmware release.
Local artifact verification is not physical chip readback proof.
The failed POST board should be recovered with stock firmware first.
```

## Full Release Notes

See:

```text
releases/v0.1-bios-research.md
```
