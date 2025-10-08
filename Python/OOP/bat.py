
from mammal import Mammal

class Bat(Mammal):
    diet = None
    def __init__(self, name, lifespan, habitat, diet):
        # super().__init__(name, lifespan, habitat)
        self.diet = diet

        super().__init__(name, lifespan, habitat)
        print("Bat Object Created!")

    def describe(self):
        super().describe()
        print(f"Diet: {self.diet}")
