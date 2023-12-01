import re

with open("inputFiles\input_day_1") as f:
    #res = [eval(f) for f in f]
    f = f.read().splitlines()

test_case = ["1abc2", "pqr3stu8vwx", "a1b2c3d4e5f", "treb7uchet"]

tot = ""
tot_num = 0
"""
for v in test_case:
    for i in v:
        print(i)
"""

for v in f:
    first_num = re.findall(r'\d', v)[0]
    last_num = re.findall(r'\d', v)[-1]

    tot += first_num + last_num
    tot_num += int(tot)

    print(tot)
    tot = ""

print(tot_num)