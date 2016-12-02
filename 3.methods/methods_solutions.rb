# Solutions to the exercise questions for Methods

# 1 - Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "Hello, #{name} it's great to meet you!"
end


# 2 - What do the following expressions evaluate to?
1. x = 2 # => 2; Evaluate to 2, as x is being asigned to the integer 2.

2. puts x = 2 # nil; 2 (integer) will be outputed, while nil will be returned on a new line.

3. p name = "Joe" # => "Joe"; Joe as a string will be outputted and returned as a value. 

4. four = "four" # => "four"; four as a string will be asigned to four the variable, thus evaluating as the string four.

5. print something = "nothing" # => nil; nothing (variable) will be outputted, and nil will be returned.

# 3 - Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(num1, num2)
  num1 * num2
end

# 4 - What will the following code print to the screen?
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# ANSWER: It will return nil, and print nothing.

# 5 - 1) Edit the method in exercise #4 so that it does print words on the screen. 
def scream(words)
  words = words + "!!!!"
  print words
end

# 2) What does it return now? 
# ANSWER: If we use print it returns nil, if we use put it would return nil. Only p would return the string as a value.

# 6 - What does the following error message tell you?

#ArgumentError: wrong number of arguments (1 for 2)
# from (irb):1:in `calculate_product'
# from (irb):4
# from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>' 

# ANSWER: The person did not put in enoguh arguments for the method "calculate_product" as it says "1 for 2" arguements are needed. The method probably required two arguments i.e. the multiply() method.
