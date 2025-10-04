
from math import pi

class Circle:
    _radius = 0.0
    area = 0.0

    def __init__(self, rd):
        self.setRadius(rd)

    def setRadius(self, rd):
        self._radius = rd
        print("Radius value if set using the setter")

    def getRadius(self):
        return self._radius

    def calculateArea(self):
        self.area = pi * self.getRadius() * self.getRadius()
        