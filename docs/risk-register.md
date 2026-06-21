# Risk Register

## R1: Firmware Blob Licensing

```text
risk: vendor firmware blobs may not be suitable for redistribution
mitigation: track hashes, reports, and local artifact names instead of publishing blobs in the docs tree
status: controlled
```

## R2: Flashing Modified Firmware

```text
risk: modified BIOS candidates can brick hardware or bypass board protection logic
mitigation: document candidates as research artifacts, require extract-back verification and chip readback
status: accepted for research, not treated as production firmware
```

## R3: Repack Drift

```text
risk: MMTool repack can modify modules outside the intended target
example: 622 path changed mod_21 outside expected baseline
mitigation: extract-back verification of 1B and 21 modules
status: controlled for 428-T130, rejected for dirty 622 path
```

## R4: Interrupted Flash

```text
risk: power-off during flash can leave bad BIOS state
observed: no video, beep pattern, shutdown after short time
mitigation: recover with stock firmware using SPI programmer or repair shop
status: active hardware recovery item
```

## R5: Raw ROM Diff Misuse

```text
risk: raw full-ROM diffs can include compression/layout noise
observed: 149788 raw byte differences between stock 322 and golden 322 full ROMs
mitigation: use module-level oracle only
status: controlled
```
