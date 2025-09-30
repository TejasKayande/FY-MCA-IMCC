
str = input("Enter a string: ")
i = 0
j = len(str) - 1

while True:
    if i > j:
        print("Palindrome")
        break
    if str[i] != str[j]:
        print("Not a Palindrome")
        break
    i += 1
    j -= 1