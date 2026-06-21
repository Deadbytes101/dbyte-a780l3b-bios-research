# Flash Failure Postmortem

## Context

A 428 threshold full ROM candidate was built locally and extract-back verified:

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79

Verifier:
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

The local `.BSS` copy was also byte-identical to the `.rom` candidate:

```text
78LDP428.BSS == 78ldp428-t130.rom
FC: no differences encountered
```

## Reported Failure

During a later flash attempt, the system reportedly powered off unexpectedly during the flashing process.

Afterward, the board showed:

```text
No video output
POST beep pattern
System powers off after a short time
USB recovery did not start
```

The beep pattern was described as:

```text
beep beep -- beep beep beep beep
plus one later beep in some attempts
```

## Working Diagnosis

The most likely state is:

```text
Interrupted or incomplete BIOS write / bad flash state.
```

The system did not reach a state where normal readback verification could be performed.

## Recovery Recommendation

Stop testing modified firmware.

Recover the board using stock BIOS only:

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

Recommended recovery routes:

```text
CH341A / SPI programmer + SOIC8 clip
Repair shop capable of flashing the BIOS chip
Pre-flashed replacement BIOS chip, if socketed or replaceable
```

## Notes

Do not retry the T130, S95, or 322-derived modified images until the board is recovered and stable with stock firmware.
