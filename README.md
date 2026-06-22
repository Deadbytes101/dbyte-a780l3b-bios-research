# DBYTE A780L3B BIOS 95W

Raw BIOS notes for the BIOSTAR A780L3B / 78LDPxxx AMI BIOS line.

This is not a clean-room product page. This is the trail: strings, modules, hashes, bad paths, one flash that went sideways, and the threshold that mattered.

> RING-0 NOTE:
> The BIOS does not care about vibes. It boots or it lies. Hash first. Hardware last.

![95W warning string search](assets/images/95w-warning-string-search.jpeg)

## Result

322 did it.

The 322 path unlocked the TDP / power warning behavior in this work. That is the success point.

```text
322 unlock: success
95W path: crossed
125W target: reached in the 322 artifact
```

The byte-level thing that mattered:

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

Not the warning branch skip.

## Release payload

The `A780-125W` release carries the 322 unlock files:

```text
A780MOD.BSS
A780MOD.ROM
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
```

## Dead path

The old `428-S95` branch skip is dead weight now:

```text
0x019249: 0F 84 99 00 -> E9 9A 00 90
```

It repacked clean, but it was the wrong idea.

## Golden 322

This is the oracle.

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

Raw full-ROM diff was noisy and not trusted as a patch source.

```text
diff_count = 149788
first_diff = 0x0486D4
last_diff  = 0x0FFFFC
```

So the work moved to module-level evidence.

## 428-T130

Best documented 428 port attempt.

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79

verifier:
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

Extract-back result:

```text
1B == patched 428 threshold module
21 == 428 MultiLanguage baseline
```

This proves the repack, not the physical chip. Chip proof needs readback.

## Recovery stock

If the board is dead or confused, stock first.

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

Alt baseline:

```text
78LDP322.rom
SHA256 0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4
```

## Flash postmortem

One flash attempt reportedly powered off during the flash.

After that:

```text
no video
beep pattern
power-off after a short time
USB recovery did not start
```

Beep note:

```text
beep beep -- beep beep beep beep
sometimes followed by one later beep
```

Current diagnosis:

```text
bad flash state / incomplete write until proven otherwise
```

Recovery path:

```text
CH341A + SOIC8 clip
or shop BIOS chip flash
write stock first
```

## Repo map

```text
bios/       manifest and hashes
assets/     photos / screenshots
docs/       notes, method, recovery
reports/    verifier records
scripts/    hash checker
releases/   release note text
notes/      local artifact notes
```

Start here:

```text
bios/MANIFEST.md
bios/SHA256SUMS.txt
docs/95w-threshold-oracle.md
docs/methodology.md
docs/post-beep-note.md
reports/428-t130-clean-repack-pass.md
```

## Boundary

BIOS work can brick boards. This repo records what happened and what matched by hash. It does not make the hardware safe.
