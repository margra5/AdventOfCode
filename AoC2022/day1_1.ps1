[int[]]$inData = Get-Content -Path '.\inputFiles\day1_1.txt'

foreach ($data in $indata) {
    if ($data -ne 0) {
        $cal += $data
    }
    else {
        if ($cal -gt $result) {
            $result = $cal
            $cal = 0
        }
        $cal = 0
    }
}
$result