#$indata = Get-Content -path ".\inputFiles\inputDay3.txt"
[string[]]$indata = Get-Content -path ".\inputFiles\test.txt"
[string[]]$OGR = ("")
[string[]]$CSR = ("")
[string[]]$gurka = ("","","","","","","","","","","","")
[string[]]$banan = ("","","","","","","","","","","","")

for ($i = 0; $i -lt $indata[0].Length; $i++) {
    foreach ($data in $indata) {
        if ($data.Substring($i,1) -eq "1") {
            $gurka[$i] += 1
        }
        if ($data.Substring($i,1) -eq "0") {
            $banan[$i] += 0
        }
    }
    if ($gurka[$i].Length -gt $banan[$i].Length) {
        $OGR += 1
    }
    elseif ($gurka[$i].Length -lt $banan[$i].Length) {
        $OGR += 0
    }
}

for ($i = 1; $i -lt $OGR.Count; $i++) {
    if ($OGR[$i] -eq 1) {
        $CSR += 0
    }
    elseif ($OGR[$i] -eq 0) {
        $CSR += 1
    }
}

[string]$OGR = -join $OGR
[string]$CSR = -join $CSR

[int]$OGR = [Convert]::ToInt32($OGR,2)
[int]$CSR =[Convert]::ToInt32($CSR,2)

$consumption = $OGR * $CSR

$consumption