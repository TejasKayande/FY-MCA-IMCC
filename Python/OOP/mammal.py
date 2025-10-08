
class Mammal:

    def __init__(self, name, lifespan, habitat):
        self.name     = name
        self.lifespan = lifespan
        self.habitat  = habitat
        print("Mammal Object Created!")

    def describe(self):
        print(f"Name: {self.name}")
        print(f"LifeSpan: {self.lifespan}")
        print(f"Habitat: {self.habitat}")