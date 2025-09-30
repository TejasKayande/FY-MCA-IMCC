
num = int(input("Enter a number: "))

spaces = 5
for i in range(1, num + 1):
    for s in range(spaces, 1, -1):
        print(end=" ")
    for j in range(1, i + 1):
        print("*", end=" ")
    spaces -= 1
    print()