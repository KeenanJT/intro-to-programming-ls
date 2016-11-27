# String #

# A string is a list of characters in a specific sequence. Strings are surrounded by either single quotes ('hi there') or double quotes ("hi there")
# Including a quote in a string you have two options
# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''

# Double quotes allow the string to have string interpolation
a = 'ten'
# The variable a is now inside the string and will return "ten"
"My favorite number is #{a}!"

# String Interpolation syntax: #{ruby expression here}

########################################################################################################################################################

# Symbols #
# A symbol is used when you want to reference something like a string but don't ever intend to print it to the screen or change it. It is often referred to as an immutable (i.e. unchangeable) string. While not 100% technically correct, it is a useful mnemonic device for now.
# Examples
:name
:a_symbol
:"surprisingly, this is also a symbol"

########################################################################################################################################################

# Numbers #
# Numbers are represented many ways in Ruby. The most basic form of a number is called an integer. It is represented by the whole number only, with no decimal point. A more complex form of a number is called a float. A float is a number that contains a decimal.
# Example of integers
1, 2, 3, 50, 10, 4345098098

# Example of floats
1.2345, 2345.4267, 98.2234

########################################################################################################################################################

# Nil #

# Expresses "nothing", and in Ruby, we do this through something called nil. A variable with a value of nil could be described as having 'nothing' or being 'completely empty', or even just simply 'not any specific type'
# It is possible to check if something is a nil type by using .nil?. For example:
"Hello, world".nil? # outputs false

# Nil is treated as false if there's an absence of content in logic statements like if-statements
x = nil
if x = nil
  puts "Hello, world!"
else 
  puts "New world order"
end

#CAVEAT: While both false and nil are both treated as negative when evaluated in an expression, they are not equivalent, as demonstrated by the above.
false == nil
=> false

########################################################################################################################################################

# Operations #

# Adding, Subtracting, and Multiplying Integers
# Add
a = 1 + 1
# Subtract
b = 1 - 1
# Multiply
c = 1 * 1

# Division vs. Modulus
# Divide - returns the whole number, not the remainder, thus utilizing floats help give an accurate number (decimal)
d = 4 / 2 # returns 2
# Modulo - returns remainder from a division
e = 4 % 3 # returns 1

# Multiplying and Dividing Floats
f = 15.0 / 4 # returns 3.75
g = 9.75 * 4.32 # returns 42.12000000000005 

# Equality Comparison
# Boolean Values, comparing objects on the left of == and right of it, thus returning true of false
# Bools on Ints
4 == 4 # returns true
4 > 2 # returns false
# Bools on Strings
'foo' == 'foo' # returns True
'foo' == 'bar' # returns false

# String Concatenation

# String concatenation looks a lot like addition, as it's joining two strings together.
'foo' + 'foo' # returns "foofoo"
'foo' + 'bar' # returns "foobar"
# With strings that have numbers it's a bit tricky
'1' + '1' # returns '11'

########################################################################################################################################################

# Type Conversion #

# to_i - conversion to integer
# to_f - conversion to float
# to_s - conversion to string

# Examples:
# to Integers
'12'.to_i => 12
'4'.to_i => 4
'4 hi there'.to_i => 4
'hi there 4'.to_i => 0
# to Floats
'4'.to_f => 4.0
'4 hi there'.to_f => 4.0
'hi there 4'.to_f => 0.0
# to Strings
4.to_s => "4"
4.16.to_s => "4.16"

########################################################################################################################################################

# Basic Data Structures #

# Two very common data structures that you will use as a Ruby programmer are arrays and hashes.

# Array - organize information into an ORDERED List. The list can be made up of strings, integers, floats, booleans, or any other data type. You'll know there's an Array because of the [] brackets
# EX:
a = [1,2,3,4,5,6] => [1,2,3,4,5,6]
# You can access each element in the array vis an index
a[0] => 1
a[2] => 3
a[8] => nil

# Hash - a dictionary in other languages, is a set of UNORDERED key-value pairs. It's represented by curly braces {}. A key-value pair is an associate where a key is assigned a specific value.
# EX:
{:dog => 'barks'} => {:dog => 'barks'}
f = {:dog => 'barks', :cat => 'meows', :pig => 'oinks'} => {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
f[:cat] => 'meows'

########################################################################################################################################################

# Expressions and Return #

# Expressions - anything that can be evaluated, and pretty much everything you write in Ruby is an expression.

# Return - => ("hash rocket") is what is returned from the expression; Ruby expressions always return a value, even if that value is nil or an error.

########################################################################################################################################################

# puts vs. return #

# puts - Tell Ruby to print something to the screen, but does not return what is printed to the screen. 

# return - Expressions do something, but they also return something. 
# Examples: 
puts 'stuff'
# prints stuff
# returns => nil

a = puts "stuff"
puts a 
# a is assigned to the value returned by puts "stuff", which is nil.










