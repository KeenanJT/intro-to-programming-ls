# Flow Control

# Conditional Flow - when your program's data makes the right decisions, doing the right execution when it's supposed to.

# Condtionals - a fork (or many forks) in a road for a program to tell its data what to do, and where to go.

############################################################################################################################

# Conditionals

# Conditionals are formed using a combination of if statements and comparison operators (<, >, <=, >=, ==, !=, &&, ||).
# They are basic logical structures that are defined with the reserved words if, else, elsif, and end. 

# Example 1: conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end
=begin
Run this code three times and do the following:

The first time, type in the number 3 and press enter.
The second time, type in the number 4 and press enter.
The third time, type in any number that isn't 3 or 4 and press enter.
=end

# Example 2: valid Ruby conditionals

# Ex1
if x == 3
  puts "x is 3"
end

# Ex2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Ex3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Ex4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

# Last, because Ruby is such an expressive language, it also allows you to append the if condition at the very end. Example 1 from above could be rewritten like this:

puts "x is 3" if x == 3

# Ruby also has a reserved word, unless. It acts as the opposite of if, so you can use it like this:

puts "x is NOT 3" unless x == 3

############################################################################################################################

# Conditionals

# Comparison operators help create complicated conditional statements, boolean vlaues that are either true or false.

# 1) < - "less than" symbol: Anything to the left of the symbol has a lower value than anything to the right of the symbol.
3 < 4
=> true

# 2) > - "greater than" symbol: Anything to the left of the symbol has a higher value than anything to the right of the symbol.
4 > 3
=> true

# 3) <= "less than or equal to" symbol: Anything to the left of the symbol is less than or equal to anything on the right.
4 <= 5
=> true

4 <= 4
=> true

# 4) >= "great than or equal to" symbol: Anything to the left of the symbol is great than or equal to anything on the right.
5 >= 4
=> true

5 >= 5
=> true

# 5) == "is equal to" operator: Anything to the left of the symbol is exactly equal to anything to the right.
5 == 5
=> true

'5' == 5
=> false 
# Comparing for equality you must be comparing two of the same type or else you'll get a false value

# 6) != "not equal to" operator: Anything to the left of the symbol is not equal to anything to the right.
4 != 5
=> true

4 != 4
=> false

############################################################################################################################

# Combining Expressions

#  It is also possible to combine multiple conditional expressions together to create a more specific scenario. We can do this using the && and || operators.

# 1) && "the and" operator: Expressions to the left and to the right of this operator both have to be true for the entire expression to be evaluated to true.
(4 == 4) && (5 == 5)
=> true

(4 == 5) && (5 == 5)
=> false

# 2) || "the or" operator: Either the expression on the left or right has to be true for the entire expression to be evaluated to true.
(4 == 4) || (5 == 5)
=> true

(4 == 5) || (5 == 6)
=> false

# 3) ! "the not" operator: When added in front of a boolean expression it will change that boolean value to its opposite.
!(4 == 4)
=> false

# Order of Precedence - follows a list of operations from highest order of precedence (top) to lowest (bottom)
=begin
1st: <=, <, >, >= - Comparison
2nd: ==, != - Equality
3rd: && - Logical AND
4th: || - Logical OR  

Evaluate the below:
=end

if x && y || z
  # do something
end
# First the x && y statement will be executed. If that statement is true, then the program will execute the # do something code on the next line. 
# If the x && y statement is false, then the z will be evaluated. 
# If the z is true, the code on the next line will be evaluated. If the z is false, then the code will exit the if statement.

############################################################################################################################

# Ternary Operator

# The ternary operator is a common Ruby idiom that makes a quick if/else statement easy and keeps it all on one line.
# The ternary operator uses a combination of the '?' and ':'.
# Examples:
true ? "this is true" : "this is not true"
=> "this is true"

false ? "this is true" : "this is not true"
=> "this is not true"

# So, how does this work? You may have inferred that first the computer evaluates what is to the left of the ?. 
# If the expression to the left of ? is true, the code directly to the right of the ? gets executed. 
# If the code on the left of the ? is false, then the code directly to the right of the : gets executed.

############################################################################################################################

# Case Statement

# A case statement has similar functionality to an if statement but with a slightly different interface.
# Case statements use the reserved words 'case', 'when', 'else', and 'end'.
# You create one by first defining a case and then evaluating the value of the case and what operation to complete if that case is true. 
# Example:
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# You can also save the result of a case statement into a variable, thus using less puts

a = 5

answer = case a 
when 5
  "a is 5"
when 6
  "a is 6"
else 
  "a is neither 5, nor 6, because it's #{a}!"
end

puts answer

# You don't necessarily have to give case an argument either.

a = 6

answer = case 
when a == 5
  "a is 5"
when a == 6
  "a is 6"
else
  "a is neither 5, nor 6, because it's #{a}!"
end

puts answer

############################################################################################################################

# True and False
# Notice that after if and elsif we have to put an expression that evaluates to a boolean value: true or false.
# Example:

a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# Above, we are assigning 5 to a, and seeing if it's true, which it is. Even if we change 5 to 0, ""(empty string), or "false" it will output the first line.

# The output is "how can this be true?". In Ruby, every expression evaluates to true when used in flow control, except for false and nil. 












