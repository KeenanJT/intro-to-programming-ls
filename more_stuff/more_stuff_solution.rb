# 1 - Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_lab?(word)
  if word =~ /lab/
    puts "#{word}"
  else
    puts "No 'lab' here"
  end
end

has_lab?("laboratory")
# => laboratory
has_lab?("experiment")
# => No 'lab' here
has_lab?("Pans Labyrinth")
# => No 'lab' here
has_lab?("elaborate")
# => elaborate
has_lab?("polar bear")
# => No 'lab' here

##################################################################################################################################################################

# 2 - What will the following program print to the screen? What will it return?
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!"}
# It will print nothing to the screen
# It will return a Proc

##################################################################################################################################################################

# 3 - What is exception handling and what problem does it solve?

# ANSWER:
# Exception handling is dealing with errors (exception) that can happen in your code, because of the user or your own code. It's handling dangerous code.
# And instead of your program crashing you can catch what happen, to see what what wrong.


##################################################################################################################################################################

# 4 - Modify the code in exercise 2 to make the block execute properly.

# ANSWER:
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
##################################################################################################################################################################

# 5 - Why does the following code...
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# ANSWER: Because block in this method is variable parameter, and not an actual block You need to have an '&' before block to make it work.

