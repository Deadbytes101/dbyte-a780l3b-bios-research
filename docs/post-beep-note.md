# POST / Beep Note

After one flash attempt reportedly powered off during the flash, the board stopped reaching video output.

Observed state:

```text
no video
POST beep pattern
system powers off after a short time
USB recovery did not start
```

Reported beep pattern:

```text
beep beep -- beep beep beep beep
sometimes followed by one later beep
```

Working diagnosis:

```text
bad flash state / incomplete BIOS write until proven otherwise
```

This note does not prove that 428-T130 caused the failure. The candidate was locally extract-back verified, but there was no chip readback proving the physical BIOS chip matched the file after flashing.

Recovery direction:

```text
stock firmware first
CH341A / SPI programmer + SOIC8 clip
or repair shop BIOS chip flash service
```

Primary stock recovery target:

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```
