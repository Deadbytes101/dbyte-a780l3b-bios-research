# 95W Threshold Oracle

## Summary

The working 322-derived behavior maps to a module-level threshold immediate patch, not to a warning-branch skip.

The relevant module is:

```text
1B / SingleLinkArch
```

## Golden 322 Oracle

```text
old value: 100000
new value: 130000

old bytes:
A0 86 01 00

new bytes:
D0 FB 01 00
```

Known module-level patch location in the 322 oracle:

```text
patch_immediate_offset = 0x018F98
diffs = 0x018F98, 0x018F99
```

## 428 Mapping

The equivalent 428 module-level mapping was found at the same immediate offset:

```text
source = mods_428/mod_1B_SingleLinkArch.bin
old_pattern_hit = 0x018F96
patch_immediate_offset = 0x018F98
old = A0 86 01 00
new = D0 FB 01 00
diffs = 0x018F98, 0x018F99
```

Generated local module candidate:

```text
firmware_evolution/candidates_428/a780l3b-428-mod1b-threshold-130000-candidate.bin
SHA256 7F1EA393A95E1CEFB0B0430EEA5CC053B0B58A83EA670F0F5D19C90E085DCF47
```

## 622 Mapping

The 622 counterpart also maps to the same threshold strategy:

```text
firmware_evolution/candidates_622/a780l3b-622-mod1b-threshold-130000-candidate.bin
SHA256 8AED17AAEF5EE87528CF43A29FBA0646A5C81264F1CF953091FDE91CA738A2F7
```

## Deprecated Hypothesis

The earlier branch-skip candidate patched this branch in the 428/622 1B module:

```text
0x019249:
0F 84 99 00 -> E9 9A 00 90
```

That approach produced a clean 428 repack, but it is now deprecated because it does not match the known 322 threshold behavior.
