
val = int(input("Enter a number to check for prime: "))

is_prime = True

for i in range(2, val):
    if val % i == 0:
        is_prime = False
        break
print(i)
if is_prime:
    print("The number is prime")
else:
    print("The number is not prime")