# 1 - Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

# Answer - Output => True
if arr.include?(number)
  puts "#{number} appears in this array!"
else
  puts "Sorry, #{number} does not appear in the array."
end

# 2 - What will the following programs return? What is value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
# ANSWER: Program will return: 
=> 1
# ANSWER: Value of arr is: 
=> [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
# ANSWER: Program will return:
=> [1,2,3]
# ANSWER:Value of arr is: 
=> [["b"], ["a", [1, 2, 3]]]

# 3 - How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
# ANSWER:
puts arr[1][0]

# 4 - What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# a. ANSWER: Outputs 3, because it is finding the first element "5", and it's at index 3.

arr.index[5]
# b. ANSWER: There's an error, because this is not how you find an index.

arr[5]
# c. ANSWER: Returns 8, because the index of 5 for the array is the element 8.

# 5 - What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] # ANSWER: "e"
b = string[11] # ANSWER: "A"
c = string[19] # ANSWER: nil

# 6 - You run the following code and get an error message what is the problem?
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
# ANSWER: The error is how they called 'margaret', because it's not how you call an element of an array. Instead they should of used the index value of type integer rather than calling the string.
# How to fix it:
names[3] = 'jody'

# 7 - 
# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
# You should have two arrays at the end of this program, The original array and the new array you've created.
# Print both arrays to the screen using the p method instead of puts.

array = [1,2,3,4,5]

new_array = array.map {|x| x + 2}

p array
p new_array





