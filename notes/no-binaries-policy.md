# No Binaries Policy

This repository intentionally does not publish firmware blobs.

Excluded file types:

```text
*.rom
*.ROM
*.bss
*.BSS
*.bin
*.BIN
*.zip
```

Reason:

```text
Vendor firmware licensing
Hardware safety
Avoiding accidental reuse of flash-risk artifacts
Keeping the repository focused on reproducible research notes
```

This repository should contain:

```text
Markdown notes
Reports
Checksums
Verifier scripts
Methodology
Postmortem notes
```

This repository should not contain:

```text
Stock BIOS images
Modified BIOS images
Extracted binary modules
Flashable candidate firmware
Readback dumps
```
