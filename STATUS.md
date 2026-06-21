# Project Status

## Current State

```text
Research archive: COMPLETE
GitHub footprint: COMPLETE
Firmware blob policy: DOCUMENTED
Recovery path: DOCUMENTED
Physical board state: FAILED POST / RECOVERY REQUIRED
```

## Primary Finding

```text
Threshold oracle strategy:
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

## Current Best Candidate

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
Verifier: PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
Status: clean local artifact, not proven by chip readback
```

## Deprecated Candidate

```text
78LDP428-S95.rom
SHA256 239AE8F23FC9652FA2BDBE3A89E447183DD4F2B3E7280AED07D27CDF43C2905F
Status: deprecated branch-skip hypothesis
```

## Rejected Path

```text
622 MMTool S95 path
Status: rejected
Reason: mod_21 drifted outside expected 622 baseline
```

## Recovery Target

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
Role: stock recovery baseline
```

## Next Hardware Step

```text
Use CH341A / SPI programmer or repair shop BIOS flash service.
Read chip twice, verify identical dumps, then write stock firmware.
```
