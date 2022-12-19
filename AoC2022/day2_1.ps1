$inData = Get-Content -Path '.\inputFiles\day2_1.txt'
$result

$inData = $inData.Replace("A", 1)
$inData = $inData.Replace("B", 2)
$inData = $inData.Replace("C", 3)

$inData = $inData.Replace("X", 1)
$inData = $inData.Replace("Y", 2)
$inData = $inData.Replace("Z", 3)


#$inData = $inData.split()

#$inData[0,1]

foreach ($data in $inData) {
    [int[]]$value = $data.Split()
    $value[0,1]
    if ($value[0] -lt $value[1]) {
        $result += 6
    }
    if ($value[0] -eq $value[1]) {
        $result += 3
    }

    $result += $value[1]
}

# Är inte 15013

$result