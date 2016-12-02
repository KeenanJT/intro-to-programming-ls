# Variable - are used to store information to be referenced and manipulated in a computer program. They also provide a way of labeling data with a descriptive name, so our programs can be understood more clearly by the reader and ourselves.

# Name of variable on left = Value you want to store on right
# Example
first_name = "Keenan"

# Variables point to values in memory and are not deeply linked to each other
#EX: What is the value of b?
a = 7
b = a
a = 4

# Value of b is still 7, eventhough the value of a changed to 4

##################################################################################################################################################################

# Getting Data From User

# gets method (get string) - gets - the program waits for the user to 1) type in information and 2) press the enter key.
# name of variable you're getting on the left = gets and any parameters on the right
name = gets 
# this will wait for the user to enter something before returning the value and a newline key (\n). To get rid of the newline key you can chain gets with chomp

name = gets.chomp
# will still prompt the user for an input then after they enter an input, it will return their input without the newline key

##################################################################################################################################################################

# Variable Scope

# A variable's scope determines where in a program a variable is available for use. A variable's scope is defined by where the variable is initialized or created. 
# In Ruby, variable scope is defined by a block. A block is a piece of code following a method invocation, usually delimited by either curly braces {} or do/end. Be aware that not all do/end pairs imply a block*.

# Rule 1: Inner scope can access variables initialized in an outer scope, but not vice versa.

#EX1: do...end block  

# scope.rb - is a random file

a = 5        # variable is initialized in the outer scope

3.times do |n|
  a = 3      # is a accessible here, in an inner scope?
end

puts a # value of a changes to 3

#EX2: Methods create their own scope, thus do not affect outter scope, and is a block

a = 5

def some_method
  a = 3
end

puts a # value of a stays 5

##################################################################################################################################################################

# Types of Variables

# Constants
# Constants are declared by capitalizing every letter in the variable's name. They are used for storing data that never needs to change.
#EX: 
MY_CONSTANT = 'I am available throughout your app.'

# Global Variables
# lobal variables are declared by starting the variable name with the dollar sign ($). These variables are available throughout your entire app, overriding all scope boundaries.
#EX:
$var = 'I am also available throughout your app.'

# Class Variables
# Class variables are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable. 
#EX:
@@instances = 0

# Instance Variables
# Instance variables are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class. 
#EX:
@var = 'I am available throughout the current instance of this class.'

# Local Variables
# Local variables are the most common variables you will come across and obey all scope boundaries. 
#EX:
var = 'I must be passed around to cross scope boundaries.'


