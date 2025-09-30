
num = int(input("Enter a number: "))

def cube(n):
    return n * n * n

sum = 0
temp = num

while (temp > 0):
    d = temp % 10
    # sum += cube(d)
    sum += d ** 3 
    temp = temp // 10

if sum == num:
    print(f"{num} is an Armstrong number")
else:
    print(f"{num} is not an Armstrong number")