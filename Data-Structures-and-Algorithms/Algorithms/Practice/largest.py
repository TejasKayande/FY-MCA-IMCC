
a = int(input("Enter the first number: "))
b = int(input("Enter the first number: "))
c = int(input("Enter the first number: "))

largest = a
if b > largest:
    largest = b

if c > largest:
    largest = c

print(f"Largest of {a} {b} {c} is: {largest}")