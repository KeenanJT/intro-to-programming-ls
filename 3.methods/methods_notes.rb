# What Are Methods and Why Do We Need Them?

# Instead of writing that piece of code over and over, there's a feature in most programming languages called a procedure, which allows you to extract the common code to one place. 
# syntax:
def name_of_method
  # method body goes here
end

# Problem: Repeating code is a no-no; example below
puts "hello"
puts "hi"
puts "greetings"
puts "how are you?"

# Method to the rescue!
def say(words) # (words) is the parameter
  puts words
end
# the logic is extracted to the method, so our code can be flexible

# Parameter - are used when you have data outside of a method's scope, but you need access to it within the method's scope.
# Arguments are pieces of information that are sent to a method to be modified or used to return a specific result.We "pass" arguments to a method when we call it. Here, we are using an argument to pass the word, or string of words, that we want to use in the say method. 

# Example of Method, Parameter, and Arguement
def method_name(parameter_name)
  # do something
end

method_name(argument)

# Default Parameters - When you're defining methods you may want to structure your method so that it always works, whether given parameters or not.
def say(words = "hello") # "hello" is the default parameter unless changed when called
  put words + "."
end

# Optional Parentheses - Many Rubyists will leave off parentheses when using methods as a style choice. For example, say() could be rewritten as just say. With arguments, instead of say("hi"), it could just be say "hi". This leads to more fluid reading of code, but sometimes it can be confusing. Keep that in mind when you're reading Ruby; it can get tricky deciphering between local variables and method names!

######################################################################################################################################################################################################

# obj.method or method(obj) - There are two ways to use methods that we will discuss in this book. The some_method(obj) format is when you send arguments to a method; in the previous example, obj is the argument being passed in to the some_method method. Sometimes, you will see methods called with an explicit caller, like this a_caller.some_method(obj). We will discuss this in more detail in part III on Object Oriented Programming. For now it's best to think of the previous code as some_method modifying a_caller. You'll have to memorize which way is required to call a method for now.

# some_method(obj) vs a_caller.some_method(obj)

# Mutating the Caller - when calling a method, the argument can be altered permanently
# Methods do not permanently change values outside of its scope, but instead changes it only when it's called; example below
def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a) # outputs 7
puts a # outputs 5

# Exception: The exception is when we perform some action on the argument that mutates the caller, we can in fact permanently alter variables outside the method's scope.

######################################################################################################################################################################################################

# puts vs return: The Sequel
#return.rb

def add_three(number)
  number + 3
end

return_value = add_three(4)
puts return_value

# Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

# What happens when this code is ran?
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

# The return value is still 7, because we explicitly that we should return "number + 3"

######################################################################################################################################################################################################

# Chaining Methods
# Because we know for certain that every method returns something, we can chain methods together, which gives us the ability to write extremely expressive and succinct code.

def add_three(n)
  n + 3
end
# The above method will return - not print out, but return - the value passed in incremented by 3.

add_three(5) # returns 8

# Since the add_three method returns a value, we can then keep calling methods on the returned value.

add_three(5).times { puts 'this should print 8 times'}

# puts out 8 statements and returns an 8, thus we could chain more

# using puts now instead of nothing
def add_three(n)
  puts n + 3
end

# will this work still?
add_three(5).times { puts "will this work?" }
# you'll get this error: "NoMethodError: undefined method `times' for nil:NilClass"
# nil is the last expression returned by the method, instead of 8, thus causing the error above

# **IMPORTANT: This is a very important aspect of chaining methods together: if anywhere along the chain, there's a nil or an exception is thrown, the entire chained call will break down.

######################################################################################################################################################################################################

# Methods as Arguments
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

# We've defined two methods add and subtract that take parameters a and b. We assume both are integer values. Recall that Ruby implicitly returns the last line of a method, however since both methods contain just one line each we're letting Ruby do its magic by using implicit return. Note that we could have also used explicit return to be more specific.

# Remember that these method calls return integer values which is what allows us to perform such an operation. In other words, the returned value is what is being passed as arguments. 

def multiply(num1, num2)
  num1 * num2
end

# EX 1:
multiply(add(20, 45), subtract(80,10))
=> 4550
# returns 4550

# EX 2:
add(subtract(80,10), multiply(subtract(20, 6), add(30, 5)))

# Let's break down what this is doing
=begin
First, we're passing add two arguments: subtract(80, 10) and multiply(subtract(20, 6), add(30, 5)).
The first argument, the subtract method call, returns 70.
The second argument, the multiply method call, furthermore has two arguments: subtract(20, 6) and add(30, 5).
Here, subtract(20, 6) returns 14 and add(30, 5) returns 35 thus the method becomes multiply(14, 35). Evaluating multiply(14, 35) now returns 490.
Finally, putting together the return values of those two method calls, we have add(70, 490) which ultimately returns 560.
=end












