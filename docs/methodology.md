# Methodology

## Principle

Do not trust raw full-ROM diffs as patch sources when repacking, compression, or layout changes are involved.

Use module-level evidence instead.

## Workflow

```text
1. Collect stock ROMs and generated artifacts.
2. Hash-lock every important file.
3. Extract modules from each BIOS revision.
4. Identify warning strings and candidate callsites.
5. Compare 322 / 428 / 622 module-level behavior.
6. Reject raw ROM diff as a direct patch source when repack deltas are large.
7. Identify the 322 golden oracle at module level.
8. Map the threshold immediate to 428 / 622 modules.
9. Build full ROM candidates only after module candidate verification.
10. Extract modules back from repacked ROMs.
11. Verify extracted modules against expected module baselines.
12. Treat physical board behavior separately from local artifact verification.
```

## Important Decision

Raw ROM diff was not used as a source patch:

```text
raw ROM diff count: 149788
first diff: 0x0486D4
last diff: 0x0FFFFC
```

This indicated repack/layout/compression noise, so the reliable oracle was module-level only.

## Verification Standard

A full ROM candidate is not considered clean until:

```text
- ROM size is exactly 1048576 bytes
- extracted 1B matches the expected patched module
- extracted 21 matches the expected MultiLanguage baseline
- candidate hash is recorded
- rejected hashes are not reused
```

## Physical Board Boundary

Local artifact verification does not prove a board is running the image.

A chip readback is required:

```text
readback == candidate -> physical flash confirmed
readback != candidate -> fix flash path first
```
