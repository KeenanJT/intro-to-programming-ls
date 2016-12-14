# 1 - Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = { uncles:["bob", "joe", "steve"], 
  sisters: ["jane", "jill", "beth"], 
  brothers: ["frank","rob","david"], 
  aunts: ["mary","sally","susan"]}

# Get the sister and brother key/values out of the hash and into a new hash
immediate_fam = family.select { |k,v| (k == :sisters) || (k == :brothers)}

# Take the new hash's values and get them into an array then flatten them so it's one array instead of two arrays.
p immediate_fam.values.flatten

########################################################################################################################################################################################################################

# 2 - Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
# *Merge returns a new hash containing the contents of the other hash and the original hash, if they have the same keys then it'll be the new hash that overides the key, unless specificed in the block.
# This method is non-destructive, thus the original hash will not be changed after usage of this method.
# Example:
a1 = {a: "a", b: "b", c: "c"}
a2 = {c: "x", d: "d", e: "e"}
a3 = a1.merge(a2)

puts a3
=> {:a=>"a", :b=>"b", :c=>"x", :d=>"d", :e=>"e"}
puts a1
 => {:a=>"a", :b=>"b", :c=>"c"} 
puts a2
=> {:c=>"x", :d=>"d", :e=>"e"}

# Merge! Does the same as merge, except the first hash will hold the merged hash data. This is a destructive method that changes the caller.
#Example:
a1 = {a: "a", b: "b", c: "c"}
a2 = {c: "x", d: "d", e: "e"}

a1.merge!(a2)
puts a1
=> {:a=>"a", :b=>"b", :c=>"x", :d=>"d", :e=>"e"}
puts a2
{:c=>"x", :d=>"d", :e=>"e"}

########################################################################################################################################################################################################################

# 3 - Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
# ANSWER: print_key.rb
a1 = {a: "a", b: "b", c: "c"}

a1.keys.each {|k| puts k}

# ANSWER: print_value.rb
a1 = {a: "a", b: "b", c: "c"}

a1.values.each {|v| puts v}

# ANSWER: print_key_value.rb
a1 = {a: "a", b: "b", c: "c"}

a1.each do |key,value|
  puts "#{key}, #{value}"
end

########################################################################################################################################################################################################################

# 4 - Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# ANSWER:
person[:name]

########################################################################################################################################################################################################################

# 5 - What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
# ANSWER: has_value?(value)
a1 = {a: "a", b: "b", c: "c"}
a1.has_value?("a")
=> true

########################################################################################################################################################################################################################

# 6 - Given the array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
(etc)
# ANSWER:
# .group_by is of the Enumberable class that groups the collection by result from the block.
# .values returns the values of a hash in an array
def anagrammer(words)
anagrammed = words.group_by { |word| word.chars.sort }.values
p anagrammed
end

########################################################################################################################################################################################################################

# 7 - Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?

# ANSWER: my_hash's x key did not take the value of the variable x as it was just the symbol, while my_hash2 did take the value of the variable x, making it a string key.

########################################################################################################################################################################################################################

# 8 - If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# ANSWER - B. There is no method called keys for Array objects.








