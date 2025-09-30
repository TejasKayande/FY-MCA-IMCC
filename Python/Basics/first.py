# Lesson about Uniform Indentation and Defining Scope

#import sys
#print(sys.version)

if 8 > 9:
    print("This line will not be executed")

print("This line will be printed!")

if 8 < 9:
    print("Now This is true")
    print("Still in the if block")
    if 7 < 9:
        print("7 is less than 9")


