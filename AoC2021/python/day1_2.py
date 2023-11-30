with open("inputFiles\input_day_1") as f:
    res = [eval(f) for f in f]

val_prev = 999999999999
tot = 0



list = ["geeks", "for", "geeks"]
for index in range(len(list)):
    if index < len(list):
        print(list[index])

for i in range(len(res)):
    if i < len(res) - 2:
        val_tot = res[i] + res[i + 1] + res[i + 2]
        if val_tot > val_prev:
            tot += 1
        val_prev = val_tot

print(tot)