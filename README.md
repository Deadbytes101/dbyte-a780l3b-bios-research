# DBYTE A780L3B BIOS 95W Research

This repository documents a BIOS reverse-engineering experiment on the BIOSTAR A780L3B / 78LDPxxx AMI BIOS family.

The goal was to understand the firmware path behind the `Max Power of CPU is over 95W` POST warning and compare multiple BIOS revisions against a known 322-derived artifact.

## Status

This is a private research archive, not a public firmware release.

No vendor BIOS images, modified ROMs, module binaries, or flashable firmware blobs are distributed in this repository.

## Key Finding

The useful oracle was not a warning-branch skip. The 322-derived behavior maps to a threshold immediate patch inside the `1B / SingleLinkArch` module:

```text
100000 -> 130000

old bytes:
A0 86 01 00

new bytes:
D0 FB 01 00
```

## Confirmed Golden 322 Artifact

```text
a780l3b-322-threshold-130000.rom
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628

A780MOD.BSS
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628

A780MOD.ROM
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628

ORIG322.BSS
SHA256 0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4
```

## 428 Threshold Candidate Verification

A 428 threshold full ROM candidate was built and extract-back verified locally.

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79

Verifier:
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK

Extract-back:
1B matched the 428 threshold module candidate.
21 matched the 428 MultiLanguage baseline.
```

This candidate is documented only as a local research artifact. It is not published here as a flashable release.

## Deprecated Path

The earlier `428-S95` branch-skip approach is deprecated.

It produced a clean repack, but it was not equivalent to the golden 322 threshold behavior.

## Flashing Result / Postmortem

During later testing, the board entered a failed POST state after a flash attempt that reportedly powered off unexpectedly during the flashing process.

Observed symptoms:

```text
No video output
POST beep pattern
System powers off after a short time
USB recovery did not start
```

Working diagnosis:

```text
Interrupted or incomplete BIOS write / bad flash state.
```

Recommended recovery path:

```text
Use stock BIOS only.
Use CH341A / SPI programmer or a repair shop capable of flashing the BIOS chip.
Do not continue testing modified firmware until the board is recovered.
```

## Repo Map

```text
bios/       key local artifact manifest and SHA256 sums
docs/       threshold oracle, failure notes, recovery notes
reports/    verification reports and stable hashes
notes/      local artifact index and binary policy
scripts/    local hash verification helper
assets/     optional screenshots and board photos
```

Related notes:

```text
docs/post-beep-note.md
docs/recovery-notes.md
bios/MANIFEST.md
bios/SHA256SUMS.txt
```

## Repository Policy

This repository tracks methodology, reports, checksums, and scripts only.

Firmware blobs are intentionally excluded:

```text
*.rom
*.ROM
*.bss
*.BSS
*.bin
*.BIN
*.zip
```

## Safety Notes

This work involves low-level firmware modification.

It can brick hardware, corrupt firmware state, or bypass board-level protection logic.

This repository is for documentation and reproducible analysis only.
