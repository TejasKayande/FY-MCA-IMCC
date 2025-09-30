
str = input("Enter the main string: ") 
sub_str = input("Enter the substring: ")
start = 0
count = 0

while True:
    start = str.find(sub_str, start)
    if start == -1:
        break
    count += 1
    start += 1 

print(f"Total occurrences of substring: {count}")
if count == 0:
    print("Substring not found")
    