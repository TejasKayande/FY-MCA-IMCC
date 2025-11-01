
def linear_search(arr, key):

    for i in range(0, len(arr) - 1):
        if arr[i] == key:
            return i

    return -1

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
key = 23

res = linear_search(arr, key)

if res != -1:
    print("Number found at index ", res)
else:
    print("Number not present in the array")