$inData = Get-Content -Path '.\inputFiles\day2_1.txt'
$score

$inData = $inData.Replace("A", 1)
$inData = $inData.Replace("B", 2)
$inData = $inData.Replace("C", 3)

$inData = $inData.Replace("X", 1)
$inData = $inData.Replace("Y", 2)
$inData = $inData.Replace("Z", 3)

[int[]]$inData

foreach ($data in $inData) {
    [int[]]$value = $data.Split()
    if ($value[0] -eq $value[1]) {
        $score += 3
    }
    elseif ($value[0] -lt $value[1]) {
        $score += 6
    }
    $score += $value[1]
}

# Är inte 15013
# Är inte 5272

$score