# Security and Safety Policy

## Scope

This repository contains firmware reverse-engineering notes and verification records.

Firmware modification can brick hardware or bypass board-level protection logic.

## Reporting Issues

For this private research archive, record issues as private notes or GitHub issues in the repository.

Include:

```text
artifact name
SHA256
exact reproduction steps
observed hardware behavior
whether chip readback was performed
```

## Safety Rules

```text
Do not flash unverified artifacts.
Do not continue modified firmware testing on a board in failed POST state.
Recover with stock firmware first.
Use chip readback to prove what is actually on the BIOS chip.
```

## Recovery Baseline

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```
