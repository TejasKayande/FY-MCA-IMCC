
# To perform any operation on a file, first open it
file = open(r"../Extern/test.txt", 'r')

# Even though open() opens a file in read mode it is a good practice to
# the specify the mode explicitly

# read the file once it is open
print(file.read())

# Repositioning the file pointer to the beginning of the file using seek()
file.seek(0)

# Reading specific number of characters from the file
print(file.read(4))

# Determining the current position of the file pointer using tell()
print("Current File pointer location is at character: ", file.tell())

# Repositioning the pointer to a different location and starting the read from there
file.seek(10)
print("File pointer repositioned")
print(file.read(10))

print("Reading line by line without ising readline()")
file.seek(0)

for line in file:
    print(line)