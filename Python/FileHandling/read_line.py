
file = open("../Extern/test.txt", "r")

fileData = file.readline()

while fileData:
    print(fileData)
    fileData = file.readline()

print("The whole file was read using readline()")

fileData = file.readlines()
print(fileData)