# 428-T130 Clean Repack Pass

## Verdict

```text
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

## Full ROM Candidate

```text
firmware_evolution/flash_candidate_428/78LDP428-T130.rom
SIZE 1048576
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
```

## Extract-Back Verification

```text
mod_1B_from_428_T130.BIN
matches firmware_evolution/candidates_428/a780l3b-428-mod1b-threshold-130000-candidate.bin
SHA256 7F1EA393A95E1CEFB0B0430EEA5CC053B0B58A83EA670F0F5D19C90E085DCF47

mod_21_from_428_T130.BIN
matches mods_428/mod_21_MultiLanguage.bin
SHA256 2B850EF06605FA8F41E88409E93D6CB92868C5F2AAC76E5468B78506158AAD4F
```

## Interpretation

The 428-T130 candidate is a clean repack against the 428 module baselines.

It follows the threshold oracle strategy:

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

It supersedes the deprecated 428-S95 branch-skip path.

## Boundary

This is an artifact verification report, not a proof that the BIOS chip booted the image.

A chip readback would be required to prove that the physical board is running this exact ROM.
