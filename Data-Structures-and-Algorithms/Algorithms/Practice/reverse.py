
num = int(input("Enter a number to find sum of its digit: "))

rev = 0

while num > 0:
    d = num % 10
    rev = rev * 10 + d
    num = num // 10

print(f"rev of digits of the num is {rev}")