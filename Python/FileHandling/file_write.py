
file = open("../Extern/student_data.txt", "w")

addMore = True

while addMore:
    stNm = input("Enter the name of the student: ")
    file.write(stNm)
    file.write('\n')

    st = input("Enter F/f if you want to stop adding the names. Enter any key to continue.")
    if st == 'F' or st == 'f':
        addMore = False

print("All names are added to the file")


file = open("../Extern/student_data.txt", "r")
print("The names added to the file are as given below: ")
stNms = file.readlines()
for nm in stNms:
    print(nm)

file.close()

