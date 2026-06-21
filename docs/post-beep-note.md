# POST / Beep Failure Note

## Observed State

After a flash attempt that reportedly powered off unexpectedly during the flash process, the board no longer reached video output.

Observed behavior:

```text
No video output
POST beep pattern
System powers off after a short time
USB recovery did not start
```

Beep pattern as reported:

```text
beep beep -- beep beep beep beep

## Working Diagnosis

Treat the board as a failed POST / bad flash state until proven otherwise.

Most likely class:

```text
interrupted or incomplete BIOS write
main BIOS area not booting cleanly
bootblock USB recovery did not start
```

## Important Boundary

This note does not prove that the 428-T130 candidate caused the failure.

The candidate was locally verified as a clean repack, but there was no chip readback proving the physical BIOS chip matched the candidate after flashing.

## Recovery Direction

Use stock firmware only for recovery.

Primary recovery target:

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

Recommended path:

```text
CH341A / SPI programmer + SOIC8 clip
or repair shop BIOS chip flash service
```

Do not continue modified firmware testing until stock POST is restored.

## Screenshot Slots

Place screenshots under `assets/` if desired:

```text
assets/board-photo.jpg
assets/post-failure.jpg
assets/beep-note.jpg
```

Suggested captions:

```text
board-photo: BIOSTAR A780L3B / A780LD-M3S family board under test
post-failure: no-video POST failure state after interrupted flash
beep-note: reported beep pattern notes
```
