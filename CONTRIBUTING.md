# Contributing

This repository is primarily a private research archive.

## What Belongs Here

```text
Markdown notes
Hash reports
Verification reports
Methodology notes
Postmortem notes
Small read-only helper scripts
```

## What Does Not Belong Here

```text
Flashable firmware blobs
Vendor BIOS images
Extracted binary modules
Readback dumps
Unverified candidate files
```

## Verification Standard

Before documenting a firmware artifact, record:

```text
file name
role
size
SHA256
source path
verification result
known failure or rejection state, if any
```

## Naming

Use clear names that describe role and version.

Examples:

```text
78LDP428-T130.rom
a780l3b-322-threshold-130000.rom
622-skip95-test.REJECT.rom
```

## Hardware Notes

Do not treat local artifact verification as physical board proof.

A chip readback is required to prove that a board is running an exact candidate image.
