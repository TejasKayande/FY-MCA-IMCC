
num = int(input("Enter a number: "))

for i in range(1, num + 1):

    for s in range(1, num - i + 1):
        print(end="  ")

    for j in range(1, i + 1):
        if j == 1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    
    for k in range(2, i + 1):
        if k == i:
            print("*", end=" ")
        else:
            print(" ", end=" ")

    print()

# Bottom Half
for i in range(1, num + 1):

    for s in range(1, num - i + 1):
        print(" ", end=" ")

    for j in range(1, i + 1):
        if j == 1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    
    # for k in range(2, i + 1):
    #     if k == i:
    #         print("*", end=" ")
    #     else:
    #         print(" ", end=" ")

    print()
    
