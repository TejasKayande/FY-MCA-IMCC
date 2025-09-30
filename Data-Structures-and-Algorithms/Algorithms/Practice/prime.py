from cmath import sqrt

primes = []

for num in range(1, 100 + 1):
    is_prime = True
    for i in range(2, int((num/2) + 1)):
        if num % i == 0:
            is_prime = False
            break

    if is_prime:
        primes.append(num)

print(primes)