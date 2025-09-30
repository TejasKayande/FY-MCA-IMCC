
file = open("../Extern/multi_line.txt", "w")
content = []
addMore = True

while addMore:
    stNm = input("Enter the name of the student: ")
    content = content + [stNm + '\n']

    st = input("Enter F/f if you want to stop adding the names. Enter any key to continue.")
    if st == 'F' or st == 'f':
        addMore = False

file.writelines(content)
file.close()

print("File written successfully!")
