
num = int(input("Enter a number to find sum of its digit: "))


sum = 0

while num > 0:
    d = num % 10
    sum += d 
    num = num // 10

print(f"sum of digits of the num is {sum}")