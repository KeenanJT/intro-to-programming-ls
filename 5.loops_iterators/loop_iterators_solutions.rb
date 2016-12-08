# 1 - What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# Returns the below, because the a + 1 is doing nothing to the array.
=> [1, 2, 3, 4, 5]

# 2 - Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

begin
  puts "This will repeat until you type STOP. "
  answer = gets.chomp
  puts "Don't make me ask again! :) "
  answer = gets.chomp
end while answer != "STOP"

# 3 - Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
array = [2,3,4,5,6]

array.each_with_index { |value, index| 
  puts "#{index + 1}. #{value}"
}

# 4 - Write a method that counts down to zero using recursion.

def countdowner(num)
  puts num
  if num > 0
    countdowner(num - 1)
  end
end
