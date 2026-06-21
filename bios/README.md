# BIOS Artifacts

This folder is the index for the key local BIOS artifacts used in the DBYTE A780L3B 95W research.

The actual firmware blobs are intentionally managed locally by the repo owner.

## Key Local Files

```text
bios/a780l3b-322-threshold-130000.rom
bios/A780MOD.BSS
bios/A780MOD.ROM
bios/ORIG322.BSS
bios/78LDP428-T130.rom
bios/78LDP428.BSS
bios/78LDP428.rom
bios/78LDP322.rom
bios/78LDP622.rom
```

## Most Important Artifacts

```text
GOLDEN 322:
a780l3b-322-threshold-130000.rom
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628

CURRENT BEST 428:
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79

STOCK RECOVERY 428:
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

## Research Finding

The useful path is the threshold strategy:

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

The earlier branch-skip path is deprecated:

```text
428-S95 branch skip at 0x019249
```

## Recovery Priority

If the board is in a failed POST state, recover with stock firmware first:

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```
