# Scripts

This folder is for local verification helpers.

Current helper:

```text
hash-check.ps1
```

Usage from a local lab folder:

```powershell
pwsh ./scripts/hash-check.ps1 -Root C:\Users\DEADBYTE\Downloads\bios_re
```

The script only checks SHA256 values for known local artifacts. It does not write to firmware files and does not perform flashing.

Repository rule:

```text
Scripts may verify hashes, compare reports, or inspect local files.
Scripts must not commit firmware blobs into the repository.
```
