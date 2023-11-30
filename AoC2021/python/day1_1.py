with open("inputFiles\input_day_1") as f:
    res = [eval(f) for f in f]

val_prev = 99999999999999999
i = 0

for val in res:
    if val > val_prev:
        i += 1
    val_prev = val

print(i)