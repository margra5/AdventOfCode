import re

with open("inputFiles\input_day_1") as f:
    #res = [eval(f) for f in f]
    f = f.read().splitlines()

test_case = ["two1nine", "eighttwothree", "abcone2threexyz", "xtwone3four", "4nineeightseven2", "zoneight234", "7pqrstsixteen"]

tot = ""
tot_num = 0
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

word = ""
i = 0
"""
def replace_letters(s):
    for word, number in dict.items():
        s = s.replace(word, number)
        word = ""
    return s

def remove_letters(s):
    return ''.join(char for char in s if char.isdigit())

result = [replace_letters(s) for s in test_case]

print(result)

result = [remove_letters(s) for s in result]

print(result)
"""
#for w in test_case:

tot = ""

for v in test_case:
    first_num = re.findall(r'\d', v)[0]
    last_num = re.findall(r'\d', v)[-1]

    tot += first_num + last_num
    tot_num += int(tot)

    print(tot)
    tot = ""

print(tot_num)