import re

with open("inputFiles\input_day_1") as f:
    #res = [eval(f) for f in f]
    f = f.read().splitlines()

test_case = ["two1nine", "eighttwothree", "abcone2threexyz", "xtwone3four", "4nineeightseven2", "zoneight234", "7pqrstsixteen"]

dict = {
    'one': '1',
    'two': '2',
    'three': '3',
    'four': '4',
    'five': '5',
    'six': '6',
    'seven': '7',
    'eight': '8',
    'nine': '9',
    'zero': '0'
}

tot = ""
tot_num = 0
i = 0
j = 0
word = ""

for v in test_case:
    while i < len(v):
        word += v[j]
        print(word)
        j += 1
        if word in dict:
            for word, number in dict.items():
                v = v.replace(word, number)
                word = ""
                i += 1
                j = 0

print(test_case)

for v in f:
    first_num = re.findall(r'\d', v)[0]
    last_num = re.findall(r'\d', v)[-1]

    tot += first_num + last_num
    tot_num += int(tot)
    tot = ""

print(tot_num)