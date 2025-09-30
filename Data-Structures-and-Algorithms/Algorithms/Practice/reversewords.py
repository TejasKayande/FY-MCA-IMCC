
str = input("Enter a string: ")
words = str.split()
reversed_words = ' '

for i in range(len(words)-1, -1, -1):
    reversed_words += words[i] + ' '

print("Reversed string:", reversed_words)
