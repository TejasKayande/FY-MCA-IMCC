
from mammal import Mammal
from bat import Bat

mmObj = Mammal("Whale", 70, "Aquatic")
mmObj.describe()

batObj = Bat("Bat", 13, "Trees", "Carnivorous")
batObj.describe()

# constructed of Mammal was called first (constructor chaining)
print(batObj.name) # accessing Mammal attribute.

# HomeWork:
# 1 Comment Super keyword in the classes
# 2 Move the Super on any line that is not the first