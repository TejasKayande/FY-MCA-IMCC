
def add(num1, num2):
    return num1 + num2

def sub(num1, num2):
    if num1 > num2:
        return num1 - num2
    else:
        return num2 - num1

def mul(num1, num2):
    return num1 * num2

def div(num, divi):
    if divi == 0:
        return None
    else:
        return num / divi