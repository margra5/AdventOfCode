$indata = Get-Content -path ".\inputFiles\inputDay2.txt"

$horizontal = 0
$depth = 0
$aim = 0

foreach ($data in $indata) {
    $split = $data.Split()
    if ($split[0] -eq "forward") {
        $horizontal += $split[1]
        $depth += $aim * $split[1]
    }
    elseif ($split[0] -eq "up") {
        $aim -= $split[1]
    }
    elseif ($split[0] -eq "down") {
        $aim += $split[1]
    }
}

$sum = $depth * $horizontal

$sum