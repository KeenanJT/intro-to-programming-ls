# Loop -  is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met. We will cover while loops, do/while loops, and for loops.

######################################################################################################################################################################################################

# A Simple Loop

# The simplest way to create a loop in Ruby is using the keyword loop. loop takes a block, which is denoted by { ... } or do ... end. 
# A loop will execute any code within the block (again, that's just between the {} or do ... end) until you manually intervene with Ctrl + c or insert a break statement inside the block

# EX: Endless Loop

loop do
  puts "This will keep printing until you hit ctrl+c"
end

# output => "This will keep printing until you hit ctrl+c" infinite

######################################################################################################################################################################################################

# Controlling Loop Execution

# KEYOWRD: break - allows us to exit a loop at any point, so any code after a break will not be executed. 

# EX:
i = 0 # this is a counter
loop do
  i += 1 # increases the loop value by one
  puts i 
  break # this will cause execution to exit the loop
end

# output => 1

# Let's add conditions within a loop

# EX: Print even numbers from 0 to 10
i = 0
loop do
  i += 2
  puts i
  if i == 10
    break # this will cause execution to exit the loop
  end
end

# output => 2, 4, 6, 8, 10

# KEYWORD: next - skip the rest of the current iteration and start executing the next iteration.

# EX: Skip 4 when printing even number from 0 to 10
i = 0
loop do 
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

# output => 2, 6, 8, 10

# break and next are important loop control concepts that can be used with loop or any other loop construct in Ruby.

######################################################################################################################################################################################################

# While Loop

# DEF - While Loop is given a parameter that evaluates to a boolean (remember, that's just true or false).
# Once that boolean expression becomes false, the while loop is not executed again, and the program continues after the while loop.

# EX: Countdown from a number given by the user
# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"

######################################################################################################################################################################################################

# Until Loops

# DEF - Until Loops is the opposite of the while loop. You can substitute it in order to phrase the problem in a different way.
# EX: countdown.rb.v2

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

######################################################################################################################################################################################################

# Do/While Loop

# DEF - Do/While Loop is similar to a while loop, but the code within the loop gets executed one time, prior to the conditional check to see if the code should be executed.
# Conditional check is placed at the end.
# Best use case is code that asks if the user wants to perform an action again, but keep prompting if the user enters 'Y'. 

# EX: perform_again.rb
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

# EX2: Another way of do/while loop
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == "Y"

######################################################################################################################################################################################################

# For Loop

# DEF - For Loops are used to loop over a collection of elements.
# Unlike a while loop where if we're not careful we can cause an infinite loop, for loops have a definite end since it's looping over a finite number of elements.
# EX: Countdown with a range

x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Donezo!"

# ***The odd thing about the for loop is that the loop returns the collection of elements after it executes, whereas the earlier while loop examples return nil. 

######################################################################################################################################################################################################

# Conditionals Within Loops
# This makes loops more effective and precise by adding conditional flow control within them
# EX: Conditional Loop 1

x = 0

while x <= 10
  if x.odd? 
    puts x # prints out odd numbers
  end
  x =+ 1 # Continues the loop until it counts to 10
end

# EX: Conditional W/ Next
# We use the next reserved word here to avoid printing the number 3 in our loop.
while x <= 10
  if x == 3
    x += 1 # if x is three then we move to the next number
    next
  elsif x.odd? # if that next number is odd then we print it, but it isn't, because it's 4
    puts x
  end
  x += 1 # continue the loop
end

# EX: Conditional W/ Break
# When you run this program you can see that the entire loop exits when the value of x reaches 7 in the loop.
while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

# Loops are basic constructs in any programming language

######################################################################################################################################################################################################

# Iterators
# Methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

# SYNTAX: .each - object.each { |item| # Do something }

# EX: Ordering an Array with Each
names = ['Bob', 'Helga', 'Kendal', 'Grace', 'Fred', "Zac"]
names.each {|name| puts name}

# DEF - Block: some lines of code ready to be executed. 
# When working with blocks there are two styles you need to be aware of 1) {} - single line blocks 2) do/end - multi_line blocks

# EX: Ordering Array w/ Block
x = 1 # the counter, to keep track

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

######################################################################################################################################################################################################

# Recursion
# Act of calling a method from within itself.

# EX: Doubling a number
def doubler(start) 
  puts start * 2
end
# a method that doubles a number, but you have to keep calling the method on the number

# EX: Doubling a number with Recursion
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

# EX: Fibonacci Seuence - sequence of numbers in which each number is the sum of the previous two numbers in the sequence.
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)
# The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls.
#  You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.









      

      

      




