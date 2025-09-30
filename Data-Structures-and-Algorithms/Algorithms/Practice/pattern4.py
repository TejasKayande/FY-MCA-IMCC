
num = int(input("Enter a number: "))

ascii = 65 # 96 for small
n = 1

for i in range(1, num + 1): 
    for j in range(1, i + 1):
        # print(j, end=" ")
        # print(i, end=" ")
        # print(chr(ascii + j), end=" ")
        print(n, end=" ")
        n += 1

    print()
        