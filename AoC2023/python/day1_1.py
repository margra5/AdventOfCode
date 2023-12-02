import re

with open("inputFiles\input_day_1") as f:
    #res = [eval(f) for f in f]
    f = f.read().splitlines()

tot = ""
tot_num = 0

for v in f:
    first_num = re.findall(r'\d', v)[0]
    last_num = re.findall(r'\d', v)[-1]

    tot += first_num + last_num
    tot_num += int(tot)
    tot = ""

print(tot_num)