# Hash - a data structure that stores items by associated keys, while arrays store items by an ordered index.

# Syntax Old Way
old_syntax_hash = {:name => 'keenan'}

# Syntax New Way
new_syntax_hash = {name: 'keenan'}

# Hashes can have many key-value pairs.
person = {name: "keenan", weight: 320, height: 6.5}

# METHOD - hash[:key] = value; adding hashes to the end of the hash
person[:hair_color] = "brown"

person[:age] = 28

# METHOD - hash.delete(:key) - deleting hashes
person.delete(:age)

# METHOD - hash[:key] - retrieve info from hash
person[:age]
=> 28

# METHOD - DESTRUCTIVE - hash.merge!(second_hash) - merge two hashes together Turns hash into second_hash, thus destroying the first hash.
person.merge!(new_hash)
=>  {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

############################################################################################################################################################

# Iterating Over Hashes

# METHOD - hash.each { |key, value| puts....etc }
person.each do |key,value|
  puts "Bob's #{key} is #{value}"
end

############################################################################################################################################################

# Hashes as Optional Parameters
#  You can use a hash to accept optional parameters when you are creating methods as well. This can be helpful when you want to give your methods some more flexibility and expressivity. 

# EXAMPLE: Optional Greetings
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} yes olds and I live in #{options[:city]}."
  end
end
# to get the first reply
greeting("Keenan")
# to get the second reply
greeting("Keenan", {age: 28, city: "NYC"})
# another way to get the second reply
greeting("Keenan", age: 28, city: "NYC")

# We used Ruby hash's empty? method to detect whether the options parameter, which is a hash, had anything passed into it. 

############################################################################################################################################################

# Hashes vs. Arrays
# They're both data structures, and are widely used.

# Deciding when to use hash vs arrays:
  
  # Does this data need to be associated with a specific label? 
    # If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.
  # Does order matter? 
    # If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.
  # Do I need a "stack" or a "queue" structure?
    # Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

############################################################################################################################################################

# A Note on Hash Keys

# You can use different data types for keys:
{"height" => "6 ft"} # String as key
{["heigh"]=>"5 ft"} # Array as key
{1=> "one"} # Integer as key
{45.328=> "forty-five point three-twenty-eight"} # Float as key
{{key: "key"}=> "has a key"} # Hash as key

############################################################################################################################################################

# Common Hash Methods

# METHOD - NON-DESTRUCTIVE - has_key? - allows you to check if a hash contains a specific key, and returns a bool
name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
name_and_age.has_key?("Steve")
=> true

# METHOD - NON-DESTRUCTIVE - .select - allows you to pass a block and will return any key-value pairs that evaluate to true when ran in the block
name_and_age.select { |k,v| k == "Bob"}
=> {"Bob"=> 42}

name_and_age.select {|k,v| (k == "Bob") || (v == 19)}
=> {"Bob"=> 42, "Joe"=> 19}

# METHOD - NON-DESTRUCTIVE - .fetch - allows you to pass a given key and it will return the value for that key if it exists.
# You can also specify an option for return if that key is not present.
name_and_age.fetch("Steve")
=> 31

name_and_age.fetch("Larry", "Larry isn't in the hash")
=> "Larry isn't in the hash"

# METHOD - NON-DESTRUCTIVE - .to_a - returns an array version of your hash.
name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]

# METHOD - NON-DESTRUCTIVE - .keys or .values - when you want to retrieve all the keys or all the values out of a hash.
# KEYS
name_and_age.keys
=> ["Bob", "Steve", "Joe"]

name_and_age.values
=> [42, 31, 19]

# You can then print out all the keys or values since they're in an array with each
name_and_age.keys.each { |k| puts k}






