$inData = Get-Content -Path '.\inputFiles\day2_1.txt'

$inData | ForEach-Object {
    @{
     'A X' = 0 + 3  # draw, rr
     'A Y' = 3 + 1  # win,  rp
     'A Z' = 6 + 2  # loss, rs
     'B X' = 0 + 1  # loss, pr
     'B Y' = 3 + 2  # draw, pp
     'B Z' = 6 + 3  # win,  ps
     'C X' = 0 + 2  # win,  sc
     'C Y' = 3 + 3  # loss, sp
     'C Z' = 6 + 1  # draw, ss
    }[$_]} | Measure-Object -Sum