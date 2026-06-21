# Recovery Notes

## Current Failure Class

The board entered a failed POST state after a flash attempt that reportedly powered off during flashing.

Treat this as a possible incomplete BIOS write / bad flash state until proven otherwise.

## Do Not Continue With Modified Images

Do not retry modified images while the board is in this state.

Do not retry:

```text
428-T130
428-S95
322 threshold image
622 candidates
```

## Preferred Recovery Image

Use stock firmware only for recovery.

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

Alternative stock baseline:

```text
78LDP322.rom
SHA256 0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4
```

## Recovery Hardware

Recommended:

```text
CH341A programmer
SOIC8/SOP8 clip
1.8V adapter kept available, only used if the flash chip requires 1.8V
```

Before writing:

```text
Remove PSU power from the motherboard.
Remove or isolate all board power sources.
Identify flash chip model and voltage.
Identify pin 1.
Read the chip at least twice.
Confirm the two dumps are byte-identical.
Only then erase/write/verify stock firmware.
```

## Recovery Goal

The goal is to restore stock POST first.

Only after the board is stable with stock firmware should any research candidate be considered again.
