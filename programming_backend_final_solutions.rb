# 1 - Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array1 = [1,2,3,4,5,6,7,8,9,10]

# ANSWER:
array1.each {|num| puts num}

############################################################################################################################################################

# 2 - Same as above, but only print out values greater than 5.

# ANSWER:
array1.each {|num| if num > 5 then puts num end}

############################################################################################################################################################

# 3 - Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

# ANSWER:
array2 = array1.select {|num| if num % 2 == 1 then p num end}

############################################################################################################################################################

# 4 - Append "11" to the end of the original array. Prepend "0" to the beginning.
# ANSWER - Append 11
array1 << 11

# Answer - Prepend 0
array1.unshift(0)

############################################################################################################################################################

# 5 - Get rid of "11". And append a "3".
# ANSWER - Get rid of 11
array1.delete(11)
# OR 
array1.pop 

# ANSWER - Append 3
array1 << 3

############################################################################################################################################################

# 6 - Get rid of duplicates without specifically removing any one value.

# ANSWER:
array1.uniq!

############################################################################################################################################################

# 7 - What's the major difference between an Array and a Hash?

# ANSWER: Array is an ordered list, starting with the index of 0, while Hash are key-value pairs, and the order is not as important.

############################################################################################################################################################

# 8 - Create a Hash using both Ruby syntax styles.

# ANSWER: New
hash1 = {a: 1, b: 2}

# ANSWER: Old
hash2 = {:a => 1, :b => 2}

############################################################################################################################################################

# 9 - Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}

# a. Get the value of key `:b`.
# ANSWER:
h[:b]

# b. Add to this hash the key:value pair `{e:5}`
# ANSWER:
h[:e] = 5

# c. Remove all key:value pairs whose value is less than 3.5
# ANSWER:
h.delete_if {|k,v| v < 3.5}

############################################################################################################################################################

# 10 - Can hash values be arrays? Can you have an array of hashes? (give examples)

# ANSWER - Yes, a hash value can be of any type. Example below:
extended_family = { 
  aunts: ["Betty", "Jane", "Rachel"],
  cousins: ["Stephan", "Reine", "Jonny"],
  uncles: ["Thad", "Dave", "Ron"],
}

############################################################################################################################################################

# 11 - Look at several Rails/Ruby online API sources and say which one you like best and why.

# ANSWER: I like the Rails api main doc: http://api.rubyonrails.org/, simply because it's extremely organized. The Ruby doc is a mess to look at, and at times is confusing.
# On the ruby docs I find myself usint ctrl+f a lot to get through the methods, since it's so cluttered, and ugly. 

############################################################################################################################################################

# 12 - Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# ANSWER:
contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]

############################################################################################################################################################

# 13 - Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

# ANSWER - Joe's Email
p contacts["Joe Smith"][0]

# ANSWER - Sally's phone number
p contacts["Sally Johnson"][2]

############################################################################################################################################################

# 14 - In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

# ANSWER:
contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


############################################################################################################################################################

# 15 - Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# ANSWER:
arr.delete_if {|s| s.start_with?("s")}

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
# ANSWER:
arr.delete_if {|s| s.start_with?("s", "w")}

############################################################################################################################################################

# 16 - Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']

# And turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
# ANSWER:
a = a.map {|b| b.split(' ')}
a = a.flatten

############################################################################################################################################################

# 17 - What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# ANSWER: 
# "These hashes are the same!"
