[int[]]$indata = Get-Content -path ".\inputFiles\inputDay1.txt"
$old = $indata[0]

foreach ($data in $indata) {
    if ($data -gt $old){
        $i += 1
    }
    $old = $data
}
$i