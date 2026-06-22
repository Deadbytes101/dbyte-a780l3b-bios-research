# DBYTE A780L3B BIOS 95W

Notes from the BIOSTAR A780L3B / 78LDPxxx AMI BIOS work.

Scope:

```text
95W warning path
322 threshold artifact
428 threshold port attempt
bad flash notes
hash records
```

![95W warning string search](assets/images/95w-warning-string-search.jpeg)

![A780MOD.BSS flash screen](assets/images/a780mod-bss-flash-success.jpeg)

## Result

322 unlocked the TDP / power warning behavior.

```text
322 unlock: success
95W path: crossed
125W target: reached in the 322 artifact
```

Patch point:

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

The old warning branch skip was not the answer.

## Release files

`A780-125W` carries the 322 files:

```text
A780MOD.BSS
A780MOD.ROM
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
```

## 322 oracle

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

Raw full-ROM diff was not used as a patch source.

```text
diff_count = 149788
first_diff = 0x0486D4
last_diff  = 0x0FFFFC
```

Module-level evidence was used instead.

## 428-T130

428 threshold port attempt.

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

Extract-back:

```text
1B == patched 428 threshold module
21 == 428 MultiLanguage baseline
```

This verifies the local repack only. Physical chip proof needs readback.

## Rejected path

```text
428-S95 branch skip
0x019249: 0F 84 99 00 -> E9 9A 00 90
status: rejected / wrong path
```

## Stock recovery

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D

78LDP322.rom
SHA256 0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4
```

## Flash notes

One flash attempt powered off during the flash.

Observed after that:

```text
no video
beep pattern
power-off after a short time
USB recovery did not start
```

Reported beep pattern:

```text
beep beep -- beep beep beep beep
sometimes followed by one later beep
```

Working state:

```text
bad flash state / incomplete write until proven otherwise
```

Recovery direction:

```text
stock firmware first
SPI programmer or repair shop BIOS flash
```

## Files

```text
bios/       manifest and hashes
assets/     screenshots
docs/       method and recovery notes
reports/    verifier records
scripts/    hash checker
releases/   release note text
notes/      local artifact notes
```

## Boundary

This is a record of the work and hashes. It is not a guarantee that a board is safe to flash.
