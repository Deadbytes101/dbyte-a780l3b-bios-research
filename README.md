# DBYTE A780L3B 95W

BIOSTAR A780L3B / 78LDPxxx BIOS notes.

No story. Just the trail.

```text
322 path: works
95W wall: crossed
125W target: reached in the 322 artifact
```

![95W warning string search](assets/images/95w-warning-string-search.jpeg)

![A780MOD.BSS flash screen](assets/images/a780mod-bss-flash-success.jpeg)

## Files

- [A780MOD.BSS](https://github.com/Deadbytes101/dbyte-a780l3b-bios-research/releases/download/A780-125W/A780MOD.BSS)
- [A780MOD.ROM](https://github.com/Deadbytes101/dbyte-a780l3b-bios-research/releases/download/A780-125W/A780MOD.ROM)

```text
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
```

## Patch

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

This is the useful path.

## 322

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

Full ROM diff was not used as the patch source.

```text
diff_count = 149788
first_diff = 0x0486D4
last_diff  = 0x0FFFFC
```

## 428-T130

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

```text
1B == patched 428 threshold module
21 == 428 MultiLanguage baseline
```

Local repack proof only. Chip proof needs readback.

## Rejected

```text
428-S95 branch skip
0x019249: 0F 84 99 00 -> E9 9A 00 90
status: rejected
```

## Stock

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D

78LDP322.rom
SHA256 0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4
```

## Bad flash note

```text
no video
beep beep -- beep beep beep beep
sometimes followed by one later beep
power-off after a short time
USB recovery did not start
```

Treat as incomplete write until chip readback says otherwise.

## Tree

```text
bios/       hashes
assets/     screenshots
docs/       method notes
reports/    verifier records
scripts/    hash checker
releases/   release note
notes/      local notes
```

## Rule

Hash the file. Read the chip. Do not guess.
