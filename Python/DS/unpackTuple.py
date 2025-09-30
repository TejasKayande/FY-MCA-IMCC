
student = ("ABC", 24, "Mumbai")
print("Student tuple: ", student)

name, age, city = student
# name = name + " Added" # unpacked vars are mutable
print(f"The name of the student is {name}, age is {age}, and city is {city}")

# use of asterisk in unpacking
# one, two, *all_, three = (1, 2, 3, 4, 5)
o, *all_ = (1, 2, 3, 4, 5)
#print(f"One - {one}")
#print(f"Two - {two}")
#print(f"Three - {three}")
print(f"All - {all_}")
