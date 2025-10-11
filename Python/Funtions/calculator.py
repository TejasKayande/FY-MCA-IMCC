
class Calculator:

    def __init__(self):
        pass

    def addition(self, a, b):
        res = a + b
        print(f"addition of {a} and {b} is {res}")

    # This method will have precedence over the above method
    def addition(self, *num):
        res = 0
        for n in num:
            res += n
        print(f"addition of all numbers is {res}")

calObj = Calculator()
calObj.addition(1, 2)
calObj.addition(1, 2, 3, 4)
