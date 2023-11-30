#$indata = Get-Content -path ".\inputFiles\inputDay3.txt"
[string[]]$indata = Get-Content -path ".\inputFiles\inputDay3.txt"
[string[]]$gamma = ("")
[string[]]$epsilon = ("")
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
        $gamma += 1
    }
    elseif ($gurka[$i].Length -lt $banan[$i].Length) {
        $gamma += 0
    }
}

for ($i = 1; $i -lt $gamma.Count; $i++) {
    if ($gamma[$i] -eq 1) {
        $epsilon += 0
    }
    elseif ($gamma[$i] -eq 0) {
        $epsilon += 1
    }
}

[string]$gamma = -join $gamma
[string]$epsilon = -join $epsilon

[int]$gamma = [Convert]::ToInt32($gamma,2)
[int]$epsilon =[Convert]::ToInt32($epsilon,2)

$consumption = $gamma * $epsilon

$consumption