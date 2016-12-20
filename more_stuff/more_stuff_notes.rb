# REGEX - regular expression - sequence of characters that form pattern matching rules, and is then applied to a string to look for matches.
# Use Cases:
  # 1 - Check if the pattern "ss" appears in the string "Mississippi"
  # 2 - Print out the 3rd word of each sentence from a list of sentences
  # 3 - Find and replace all instances of "Mrs" with "Ms" in a sentence
  # 4 - Figure out if a string start with "St".
  # 5 - Figure out if a string end with "art".
  # 6 - Does a string have non-alphanumeric characters in it?
  # 7 - Are there any whitespace characters in the string?
  # 8 - Find and replace all non-alphanumeric characters in a string with "-"

# Use case #1 is the most common
# put any character in two / (forward slashes)
# then use =~ operator to compare
# EXAMPLE
"powerball" =~ /b/
=> 5
# This means that the first match that took place was at the fifth index of the string.
# Since it's an index it's a truthy value, thus we can use the return value as a bool

# EXAMPLE - boolean_regex.rb
def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

# METHOD - .match - returns MatchData object, and performs a regex comparison
# EXAMPLE
/b/.match("powerball")
=> #<MatchData "b">

####################################################################################################################################################################################################

# Ruby Standard Classes
# When you have a specific action that you need to perform, look for it first among Ruby's standard classes. Using libraries like the Math module can help you solve problems more efficiently.

# EXAMPLE - square root using standard class
Math.sqrt(400)
=> 20.0

# EXAMPLE - using a constant in Math class
Math::PI
=> 3.141592653589793

# EXAMPLE - calculate july 4th in 2008
t = Time.new(2008, 7, 4)
=> 2008-07-04 00:00:00 -0400

t.monday?
=> false
t.friday?
=> true

####################################################################################################################################################################################################

# Variables as Pointers
a = "hi there"
b = a # points to the same address in memory, which is "hi there"
a = "not here" # a changes to another string, and another address
# What is b? b is "hi there"

a = "hi there"
b = a # point to same address
a << ", Bob" # mutated the caller, and stayed in the same address
# What is b? b is "hi there, Bob", same as a.

# Variables are pointers to physical space in memory. In other words, variables are essentially labels we create to refer to some physical memory address in your computer.

# Some operations will mutate the actual address space in memory, thereby affecting all variables that point to that address space.
# Some operations will not mutate the address space in memory, and instead will re-point the variable to a new address space in memory.

# Applicable to all elements that have methods that mutate the caller.

a = [1, 2, 3, 3]
b = a
c = a.uniq

# return values
a => [1,2,3,3]
b => [1,2,3,3]
c => [1,2,3]

####################################################################################################################################################################################################

# Blocks and Procs
# Blocks, like parameters, can be passed into a method just like normal variables.
# EXAMPLE - block as an argument / parameter
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method"
end

# EXAMPLE - pass argument to block method
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method: #{num}"
end

# Procs - blocks that are wrapped in a proc object and stored in a variable to be passed around.
# EXAMPLE - defining a proc
talk = Proc.new do
  puts "I am talking"
end
talk.call # Call prints out the proc that's being stored in the variable.

# Procs can also take arguments if specific
# EXAMPLE - Proc taking an argument

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call "Bob"

# Procs can be passed into methods

def take_proc(proc)
  [1,2,3,4,5].each do |num|
    proc.call num
  end
end

proc = Proc.new do |num|
  puts "#{num}. Proc being called in the method!"
end

take_proc(proc)

# Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.

####################################################################################################################################################################################################

# Exception Handling
# A process that deals with errors in a manageable and predictable way.
# Ruby has an Exception class that makes handling these errors much easier. 
# It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling.

# Exception Handling Structure
begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

# Exception handling is best used when working with unpredictable behavior, which usually is the user
# EXAMPLE - nil value handling

names = ['Bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong."
  end
end

# EXAMPLE - Rescue inline
zero = 0
puts "Before .each call"
zero.each { |ele| puts ele} rescue puts "Can't do that!"
puts "After .each call"

# EXAMPLE - Rescuing with pre-existing errors - ZeroDivisionError
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e 
    puts e.message
  end
end
####################################################################################################################################################################################################

# Exceptions & Stack Traces
# Reading the stack trace is important to understanding what went wrong and how to troubleshoot the error(exception)
# EXAMPLE - TypeError
'1'+ 1
TypeError: no implicit conversion of Fixnum into String
# TypeError is telling us two types don't match - one being a string, and the other a Fixnum.
# These built-in exceptions also come with attached messages.
=begin
EXAMPLE BUILT IN ERROR TYPES
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError
=end

# EXAMPLE - Stack Trace exploring
def greet(person)
  puts "Hello," + person
end
greet("Jack")
=> "Hello, Jack"

# ERROR
greet(1)
# First error is a TypeError on line 2
greeting.rb:2:in `+': no implicit conversion of Fixnum into String (TypeError) 
from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'
# Line 2 error; Second part of the trace is telling us that greet can't be called because of the error
# Line 6 error; Third part is telling us <main> started, but couldn't be returned
# This stack essentialyl went main -> greet -> puts

# RUBY STACK
main -> greet -> puts -> exit and return to main

# EXAMPLE - complex stack error
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

# Stack Trace
main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main

# ERROR 
H e l l o, J o h n
greeting.rb:2:in `space_out_letters': undefined method `split' for 1:Fixnum (NoMethodError)
from greeting.rb:6:in `greet' 
from greeting.rb:10:in `decorate_greeting'
from greeting.rb:14:in `<main>'



















