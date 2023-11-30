[int[]]$indata = Get-Content -path ".\inputFiles\inputDay1.txt"
[int[]]$sum

for ($i = 0; $i -lt $indata.Count-2; $i++) {
    [int[]]$value += $indata[$i] + $indata[$i+1] + $indata[$i+2]

}
$j = 0

for ($i = 0; $i -lt $value.Count; $i++) {
    if ($value[$i+1] -gt $value[$i]) {
        $j++
    }
}

$j