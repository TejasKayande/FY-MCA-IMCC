
from circle import Circle

rdVal = int(input("Enter Radius: "))
circleObj = Circle(rdVal)
circleObj.calculateArea()

print("Area of the circle is: ", circleObj.area)