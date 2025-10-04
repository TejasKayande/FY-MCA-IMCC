
class City:

    def __init__(self, name, population):
        self.name = name
        self.population = population

    def describeCity(self):
        print(self.name)
        print(self.population)


class State:
    def __init__(self, name):
        self.name = name

    def describeState(self):
        print(self.name)


# mumbai = City("Mumbai", 50000)
# mumbai.describeCity()

## Question!!
# class ABC:
#     def __init__(self, b):
#         if b:
#             self.one = 12
#         else:
#             self.two = 13
#         self.three = 14
# a = ABC(True)
# print(a.two)