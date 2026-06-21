# Changelog

## v0.1-bios-research

Initial research archive snapshot.

### Added

```text
- README research overview
- BIOS manifest and SHA256 sums
- Golden 322 threshold oracle documentation
- 428-T130 clean repack verification report
- Deprecated 428-S95 branch-skip note
- Rejected 622 dirty path record
- Flash failure postmortem
- Recovery notes
- Local artifact manifest
- Hash-check helper script
- Release draft notes
- Showcase summary
- Project status file
```

### Key Finding

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

### Best Documented Candidate

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
Verifier: PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

### Recovery Baseline

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```
