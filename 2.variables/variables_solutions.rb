# 1 - Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
# name.rb
puts "Hello, what is your name?"
name = gets.chomp
name.capitalize!

puts "Hello, #{name}, it is very nice to meet you! <3"

# 2 - Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.
# age.rb
print "How old are you?"
age = gets.chomp

puts "In 10 years you will be: #{age.to_i+10}"
puts "In 20 years you will be: #{age.to_i+20}"
puts "In 30 years you will be: #{age.to_i+30}"
puts "In 40 years you will be: #{age.to_i+40}"

# 3 - Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

10.times do
  print name
end

# 4 - Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

print "What is your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What is your last name?"
last_name = gets.chomp
last_name.capitalize!

print "Great to meet you #{first_name} #{last_name}!"

# 5 - Look at the following programs...
x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
# ANSWER: X prints out to 3 in each cases. The second throws an "undefined local variable or method" error, because x was not avaliable since it was created within the do/end block's scope.

# 6 - What does the following error message tell you?
# ANSWER: The variable or method "shoes" existed inside of a block, and was called outside of the block, in which it does not exist.
