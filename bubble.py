'''
Author: Daniel Kruze
Title: bubble.py
Date: 09-20-22
'''
listUserIntegers = [] # initialize an empty list for holding integers


# Expected input: [a, a+1, a+2...n] where n = 10 and a+1 !> a
# Expected output: [a, a+1, a+2...n] where n = 10 and a+1 >= a
def badSort(): # bubble sort function
    for a in range(9): # a = 0; a <= 9; a++
        for b in range(9): # b = 0; b <= 9; b++
            if listUserIntegers[b] > listUserIntegers[b+1]: # If a value in the specified list is less than the value at the next index 
                x = listUserIntegers[b] # let x be a value in the specified list
                listUserIntegers[b] = listUserIntegers[b+1] # the value in the specified list is now the value that is at the next index
                listUserIntegers[b+1] = x # the value that was once at the next index is now set equal to the original value

def main(): # entry point
    print("Please input integers until asked to stop:\n")
    keepGoing = True # sentry for following while loop
    while keepGoing: # while sentry is true
        strUserInput = input(str(">> ")) # let a string variable be user input
        intValue = int(strUserInput) # let an integer variable be that string input, parsed to an integer
        listUserIntegers.append(intValue) # add that integer (parsed from the user) to the empty list
        if len(listUserIntegers) == 10: # if 10 user integers have been added to the list
            keepGoing = False # end while loop
    print("Unsorted:\n")
    print(listUserIntegers) # print out list of integers
    print("\n")
    print("Sorted:\n")
    badSort() # sort the list of integers
    print(listUserIntegers) # print out sorted list of integers
main() # exit point
