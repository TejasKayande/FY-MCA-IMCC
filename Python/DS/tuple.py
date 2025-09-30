`

firstTuple = () # Empty Tuple
print("first tuple: ", firstTuple)
print(type(firstTuple))
print()

secondTuple = ("mon", "tue", "web", "thu")
print("second tuple: ", secondTuple)
print(type(secondTuple))
print()

thirdTuple = (1, 2, 3)
print("third tuple: ", thirdTuple)
print(type(thirdTuple))
print()

fourthTuple = tuple(("fri", "sat", "sun"))
print("fourth tuple: ", fourthTuple)
print(type(fourthTuple))
print()

fifthTuple = (secondTuple, fourthTuple) # nested tuple
print("fifth tuple: ", fifthTuple)
print(type(fifthTuple))
print()

mylist = [10, 20, 30]
sixthTuple = tuple(mylist)
print("sixth tuple: ", sixthTuple)
print()

seventhTuple = (40, )
print("seventh tuple: ", seventhTuple)
print()

eighthTuple = (90)
print("eighth tuple: ", eighthTuple)
print(type(eighthTuple))
print()

ninthTuple = tuple(range(1, 11))
print("ninth tuple: ", ninthTuple)
print()

seventhTuple = (seventhTuple + ninthTuple)
print("seventh tuple: ", seventhTuple)
print(type(seventhTuple))