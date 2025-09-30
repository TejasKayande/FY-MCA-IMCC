
num = int(input("Enter a number: "))

for i in range(1, num + 1): 
    for j in range(1, num + 1):
        if ((num // 2) + 1 == i or (num // 2) + 1 == j):
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()
        