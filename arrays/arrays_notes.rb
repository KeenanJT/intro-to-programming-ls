# Arrays

# An array is an ordered list of elements that can be of any type (even other arrays). 
# EX:
example_array = [1, 'Bob', 3.14, 'another string']

# Array METHOD - first - find the first element of the array
example_array.first 
=> 1

# Array METHOD - last - find last element of the array
example_array.last
=> 'another string'

# Array METHOD - indexes - to pull out the element based on its index. Element index starts from 0.
example_array[0]
=> 1

example_array[2]
=> 3.14

################################################################################################################################################

# Modifying Array
# DESTRUCTIVE Methods mutate the caller, returning a new value, but also changing the original array. 
# NON-DESTRUCTIVE Methods don't mutate the caller, but return a new value for the array, and don't change the original array.

# Array Method; DESTRUCTIVE - pop - take the last item off of an array permanently
example_array.pop
=> 'another string' # removed the last element

# Array Method; DESTRUCTIVE - push - adds element to the end of an array
example_array.push("another string")
=> "another string" # added to the end

# Array Method; DESTRUCTIVE - << (shovel operator) - adds an element to the end of an array
example_array << "hello"
=> "hello" # added to the end

# Array Method; NON-DESTRUCTIVE - map or collect - iterates over an array applying a block to each element of the array, returns a new array with those results.
num_array = [1,2,3,4,5]
num_array.map { |num| num**2  } # squares each number in the array
=> [1,4,9,16,25] # returns squared array
# if we called num_array again the value will be
num_array => [1,2,3,4,5]

# Array Method; DESTRUCTIVE - delete_at - eliminate the value at a certain index from your array.
example_array.delete_at(0)
=> 1 # deleted permenantly

# Array Method; DESTRUCTIVE - delete - eliminate all instances of the value by name, not index in the array.
example_array.delete('Bob')
=> 'Bob' # ALL 'Bob' instances will be deleted

# Array Method; NON-DESTRUCTIVE - uniq - Iterates through an array, deletes duplicate values, then returns the result as a new array.
num_array_2 = [1,2,3,4,5,4,3,2,1]
num_array_2.uniq
=> [1,2,3,4,5]
p num_array_2 => [1,2,3,4,5,4,3,2,1] # num_array_2 value has not been mutated

# Array Method; DESTRUCTIVE - uniq! - uniq with the bang(!) operator performs the uniq method, but destructively.
num_array_2.uniq!
=> [1,2,3,4,5]
p num_array_2 => [1,2,3,4,5]

################################################################################################################################################

# Iterating Over an Array

# Array Method; NON-DESTRUCTIVE - each - iterates over each element and applies the block in sequence.
num_array.each {|num| print num}
=>1
=>2
=>3
=>4
=>5

# Array Method; NON-DESTRUCTIVE - select - iterates over an array and returns a new array that includes any items that return true to the expression in the block.
num_array_3 = [1,2,3,4,5,6,7,8,9,10]
num_array_3.select {|num| num > 4} # grabs all the numbers greater than 4
=> [5,6,7,8,9,10] # returns them as an array
p num_array_3 => [1,2,3,4,5,6,7,8,9,10]

################################################################################################################################################

# Methods With a !
# The bang operator ( ! ) at the end of the method name usually indicates that the method will change(mutate) the caller
# This is not always the case, so make sure to check the documentation to see if the method is destructive still.

################################################################################################################################################

# Mutating the Caller: Part Two

# Always know what a method is doing to a caller, and what the method is returning

################################################################################################################################################

# Nested (Multidimensional) Arrays 

# Arrays can contain other arrays to make more complex data structures
teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]

# Find the team by using the index
teams[1]
=> ["Frank, Molly"]

# Can also grab individual elements from nested arrays
teams[0][1] # grabs the first element of the first array then the second element of the first array
=> "Steve"

################################################################################################################################################

# Comparing Arrays 
# By using the == operator

# Array Method; DESTRUCTIVE - unshift - opposite of pop, as it adds the arguement to the front of the list

a = [1,2,3]
b = [2,3,4]

a == b
=> false

b.pop
=> 4

b.unshift(1)
=> [1,2,3]

a == b
=> true

################################################################################################################################################

# Common Arrays Methods

# Array Method; NON-DESTRUCTIVE - include? - checks to see if the argument given is included in the array. The question mark means it'll return a bool.
a = [1,2,3,4,5]
a.include?(3)
=> true

# Array Method; NON-DESTRUCTIVE - flatten - takes nested (multidimensional) arrays and create a one-dimensional array.
a = [1,2,[3,4,5],[6,7]]
a.flatten
=> [1,2,3,4,5,6,7] # flattens the array
p a
=> [1,2,[3,4,5],[6,7]] # a is still the multidimensional array

# Array Method; NON-DESTRUCTIVE - each_index - iterates through the array, however the return variable will be the index number.
a = ["cat", "hat", "dog", "trick"]
a.each_index {|i| puts "This is index #{i}"}
# This is index 0 (cat)
# This is index 1 (hat)
# This is index 2 (dog)
# This is index 3 (trick)

# Array Method; NON-DESTRUCTIVE - each_with_index - iterates through the array, gives you ability to manipulate both value and index by passing two parameters in the block.
a.each_with_index {|value, index| puts "#{index+1}. #{value}"}
# 1. cat
# 2. hat
# 3. dog
# 4. trick

# Array Method; NON-DESTRUCTIVE - sort - order an array, and returns the sorted array.
a = [5,3,8,2,4,1]
a.sort
=> [1,2,3,4,5,8]

# Array Method; NON-DESTRUCTIVE - product - used to combine two arrays by returning a combination of all elements from all arrays.
a = [1,2,3]
b = [4,5]

a.product(b)
=> [[1,4], [1,5], [2,4], [2,5], [3,4], [3,5]]

################################################################################################################################################

# each vs map

# each - simple way to iterate over a collection, and is preferred over for loops. It's commonly used with a block.
# If it does not have a block then it returns an Enumerator.
# output > new elements out the array
# return value > original array
a = [1, 2, 3]
a.each { |e| puts e + 2 }

# Outputs
3
4
5
=> [1, 2, 3]


# Enumerator
a = [1,2,3]
a.each
=> #<Enumerator: [1,2,3]:each>

# map - same as each, but instead of returning the elements out of the array (it's what each does), map returns a new array.
# output > new elements out the array
# return value > new elements in an array
# If it does not have a block then it returns an Enumerator.
a = [1,2,3]
a.map {|x| x**2}
# Output
1
4
9
=> [1,4,9]

# WARNING >> Because map returns the new value, when using puts it'll return nil
a = [1,2,3]
a.map {|x| puts x**2}
=> [nil,nil,nil]

# Enumerator
a = [1,2,3]
a.map
=> #<Enumerator: [1,2,3]:map>





