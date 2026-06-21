# A780-125W

First hard snapshot of the A780L3B / 78LDPxxx 95W work.

## Tag

```text
A780-125W
```

## What mattered

```text
100000 -> 130000
A0 86 01 00 -> D0 FB 01 00
```

Not the S95 branch skip. That one is deprecated.

## Golden 322

```text
a780l3b-322-threshold-130000.rom
SHA256 DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628
```

## Best 428

```text
78LDP428-T130.rom
SHA256 81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79
PASS_CANDIDATE_428_THRESHOLD_CLEAN_REPACK
```

## Stock to recover

```text
78LDP428.rom
SHA256 955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D
```

## Board state

```text
failed POST after flash attempt
no video
beep pattern
power-off after a short time
```

Stock flash with programmer first. Debug later.
