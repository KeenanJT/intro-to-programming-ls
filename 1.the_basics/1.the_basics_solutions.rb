# 1 - Add two strings together that, when concatenated, return your first and last name as your full name in one string.
a = "Keenan"
b = "Turner"
c = a + b

# Or you can do
"Keenan" + "Turner"

# 2 - Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:

# a) Thousands Place
5678 / 1000 => 5

# b) Hundres Place
5678 % 1000 / 100 => 6

# c) Tens Place
5678 % 1000 % 100 / 10 => 7

# d) Ones Place
5678 % 1000 % 100 % 10 => 8

# 3 - Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

movies = {movieA: 1976, movieB: 2004, movieC: 2013, movieD: 2001, movieE: 1981}

puts movies[:movieA]
puts movies[:movieB]
puts movies[:movieC]
puts movies[:movieD]
puts movies[:movieE]

# 4 - Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movies_array = [1975, 2004, 2013, 2001, 1981]

puts movies_array[0]
puts movies_array[1]
puts movies_array[2]
puts movies_array[3]
puts movies_array[4]

# 5 - Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# Factorial of 5 = 120
puts 5 * 4 * 3 * 2 * 1

# Factorial of 6 = 720
puts 6 * 5 * 4 * 3 * 2 * 1

# Factorial of 7 = 5040
puts 7 * 6 * 5 * 4 * 3 * 2 * 1

# Factorial of 8 = 40320
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# 6 - Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 12.0 * 12.0
puts 200.23 * 200.23
puts 123.456 * 123.456

# 7 - What does the following error message tell you?

# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}' from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# It's telling me that there was an useage of ')' when interpreter wanted a '}', which means they were trying to make a hash (dictionary).









