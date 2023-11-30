[int[]]$inData = Get-Content -Path '.\inputFiles\day1_1.txt'
[int[]]$calData = @()

foreach ($data in $inData) {
    $cal += $data
    if ($data -eq 0) {
        $calData = $calData + $cal
        $cal = 0
    }
}
$calData = $calData | Sort-Object -Descending
$calData[0]