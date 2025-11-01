
val1 = int(input("Enter first number: "))
val2 = int(input("Enter second number: "))

op = input("Enter add if you want to add the two numbers or sub if you want to subtract: ")

addFunction = lambda val1, val2 : val1+val2

if (val1>val2):
    subFunction = lambda val1, val2 : val1-val2
else:
    subFunction = lambda val1, val2 : val2-val1

op.lower()
if (op == 'add'):
    print("Result of addition is: ", addFunction(val1, val2))
elif (op == 'sub'):
    print("Result of subtraction is: ", subFunction(val1, val2))
else:
    print("Invalid operation")
    