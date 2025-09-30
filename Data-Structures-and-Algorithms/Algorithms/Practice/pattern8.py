
num = int(input("Enter a number: "))

for i in range(1, num + 1):
    for s in range(1, num - i + 1):
        print(end="  ")
    for j in range(1, i + 1):
        print(j, end=" ")
    for k in range(j - 1, 0, -1):
        print(k, end=" ")

    print()