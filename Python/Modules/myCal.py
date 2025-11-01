
# To Demonstrate the use of Modules
import calUitility

n1 = int(input("Enter first number: "))
n2 = int(input("Enter second number: "))

res = calUitility.add(n1, n2)
print("Result of addition is: ", res)

res = calUitility.sub(n1, n2)
print("Result of subtraction is: ", res)

res = calUitility.mul(n1, n2)
print("Result of multiplication is: ", res)

res = calUitility.div(n1, n2)
print("Result of division is: ", res)
