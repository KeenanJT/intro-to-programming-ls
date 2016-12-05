# 1 - Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
1. (32 * 4) >= 129
# False: 128 is less than 129
2. false != !true
# False: false does equal falsetrue
3. true == 4
# False: true only is equal to true
4. false == (847 == '874')
# True: false does equal to false
5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# True: because there's one true in a long or statement, meaning it's true.

# 2 - Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
def screamer(message)
  if message.length > 10 
    message.upcase
  else
    message
  end
end

# 3 - Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
print "Give us a number between 0 and 100: "
number = gets.chomp.to_i

if number <= 50
  puts "Your number #{number} is between 0 to 50!"
elsif number <= 100
  puts "Your number #{number} is between 51 to 100!"
else number < 0 || number > 100
  puts "Your number #{number} is either lower than 0, or over 100. Please try again."
end

# 4 - What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
1. '4' == 4 ? puts("TRUE") : puts("FALSE")
# ANSWER: "FALSE"

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end
# ANSWER: "Did you get it right?"

3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end
# ANSWER: "Alright now!"

# 5 - Split into a, b, and c. below:
# a) Rewrite your program from exercise 3 using a case statement.
print "Give us a number between 0 and 100: "
number = gets.chomp.to_i

output = case number
  when 0..50
    "Your number #{number} is between 0 to 50."
  when 51..100
    "Your number #{number} is between 51 to 100."
  else
    "Either your number #{number} is higher than 100 or lower than 0. Please try again!"
end

puts output

# b) Wrap the statement from exercise 3 in a method.
print "Give us a number between 0 and 100: "
number = gets.chomp.to_i

def checker(number)
  if number <= 50
    puts "Your number #{number} is between 0 to 50!"
  elsif number <= 100
    puts "Your number #{number} is between 51 to 100! "
  else number < 0 || number > 100
    puts "Your number #{number} is either under 0 or over 100. Please try again."
  end
end

puts checker(number)

# c) Wrap this new case statement in a method. 
print "Give us a number between 0 and 100: "
number = gets.chomp.to_i

def guesser(number)
  case number
    when 0..50 then "Your number #{number} is between 0 to 50."
    when 51..100 then "Your number #{number} is between 51 to 100."
  else 
    "Either your number #{number} is higher than 100, or lower than 0. Please try again."
  end
end

puts guesser(number)



# 6 - When you run the following code...
  def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
  end

equal_to_four(5)

# You get the following error message..

test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

# Why do you get this error and how can you fix it?
# Because you need another end for to close off the method, as we only have an end for the if-statement.
# This is how you fix it:
 def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
      end
  end

