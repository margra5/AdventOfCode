$inData = Get-Content -Path '.\inputFiles\day2_1.txt'

$inData | ForEach-Object {
    @{
     'A X' = 3 + 1  # draw, rr
     'A Y' = 6 + 2  # win,  rp
     'A Z' = 0 + 3  # loss, rs
     'B X' = 0 + 1  # loss, pr
     'B Y' = 3 + 2  # draw, pp
     'B Z' = 6 + 3  # win,  ps
     'C X' = 6 + 1  # win,  sc
     'C Y' = 0 + 2  # loss, sp
     'C Z' = 3 + 3  # draw, ss
    }[$_]} | Measure-Object -Sum