param(
    [string]$Root = "."
)

$ErrorActionPreference = "Stop"

$Expected = @{
    "a780l3b-322-threshold-130000.rom" = "DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628"
    "A780MOD.BSS" = "DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628"
    "A780MOD.ROM" = "DBEF5C4AFCBBF83C76276B52D293B6EB034EA224629753DF6FE52DAAB5DBE628"
    "ORIG322.BSS" = "0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4"
    "78LDP428-T130.rom" = "81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79"
    "78LDP428.BSS" = "81665274B955B1139F02FAC129E544BB575B00F85DA6B72ED8A3B6106E24CF79"
    "78LDP428.rom" = "955798C808809341857C84CD3E1EC2DCC89CEC1098FC923FE048D2ADC3BE262D"
    "78LDP322.rom" = "0E811F3F70D47C47C75293CD163335589DE4CA754E99E7CA80FCEEF23658BCA4"
    "78LDP622.rom" = "6CBC99A785BE036959F8E2422941A546689010DE244826CCFDD3BBAB7CD127FF"
}

Write-Host "DBYTE A780L3B hash check"
Write-Host "Root: $Root"
Write-Host ""

foreach ($Name in $Expected.Keys | Sort-Object) {
    $Files = Get-ChildItem -Path $Root -Filter $Name -Recurse -File -ErrorAction SilentlyContinue
    if (-not $Files) {
        Write-Host "MISSING  $Name"
        continue
    }

    foreach ($File in $Files) {
        $Hash = (Get-FileHash $File.FullName -Algorithm SHA256).Hash.ToUpperInvariant()
        if ($Hash -eq $Expected[$Name]) {
            Write-Host "PASS     $($File.FullName)"
        } else {
            Write-Host "FAIL     $($File.FullName)"
            Write-Host "         expected $($Expected[$Name])"
            Write-Host "         actual   $Hash"
        }
    }
}
