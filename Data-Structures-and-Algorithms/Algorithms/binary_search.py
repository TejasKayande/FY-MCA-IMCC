
def binary_search(arr, key):

    low = 0
    high = len(arr) - 1

    while low <= high:

        mid = (low + high) // 2;

        if key > arr[mid]:
            low = mid + 1
        
        elif key < arr[mid]:
            high = mid - 1

        else:
            return mid

    return -1

def binary_search_recur(arr, key, low, high):

    if low <= high:

        mid = (low + high) // 2

        if key < arr[mid]:
            return binary_search_recur(arr, key, low, mid - 1)
        
        if key > arr[mid]:
            return binary_search_recur(arr, key, mid + 1, high)
        
        else:
            return mid

    return -1

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
key = 2

res = binary_search_recur(arr, key, 0, len(arr))

if res != -1:
    print("Number found at index ", res)
else:
    print("Number not present in the array")