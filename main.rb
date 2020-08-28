#===================================
# DECLARING VARIABLES
#===================================

# A string can be written within both '' and ""
string = 'This is a string'
string2 = "This is also a string"
# Numbers are written without '' and ""
integer = 24
float = 3.45
# Boolean are often writen with a ? at the end of the variable name
boolean? = true
# A null value is written nil
nothing = nil

#===================================
# BASIC STRING MANIPULATION
#===================================

test_text = "This is the testing text"
uppercase = test_text.upcase()
lowercase = test_text.downcase()
trimed_space = test_text.strip()
get_textlength = test_text.length()
check_include = test_text.include? "testing"
select_char = test_text[1]
select_char_range = test_text[0,3]
get_char_index = test_text.index(h)

#===================================
# BASIC MATH AND NUMBERS
#===================================

plus = 1 + 2
minus = 3 - 2
multiplication = 2 * 4
division = 8 / 4

exponential = 2**3 # 2 ^ 3
modulo = 4 % 2

text_plus_num = "This is text " + 1.to_s
get_absolute = -20.abs() # return 20
get_rounded = 4.87.round() # return 5
get_rounded_up = 4.87.ceil() # return 5
get_rounded_down = 4.87.floor() # return 4
import Math 
squareroot = Math.sqrt(36)
logarithm = Math.log(1)

#===================================
# IO
#===================================

# Print message in terminal
print 'Hello World'
# Print message in terminal and add new line
puts 'Hello Rubby'
# Get user input from terminal
user_input = gets
# Get user input from terminal and delete new line
user_input = gets.chomp()

#===================================
# BASIC LOOPS
#===================================

# Will loop infinitely till you press Ctrl + C
loop do
  puts 'this string will loop till you press Ctrl + C'
end
# Will loop till the if condition is true
i = 0
loop do
  i += 2
  puts i
  if i == 10
    break   # this will cause execution to exit the loop
  end
end
# Variable for next exemples
x = gets.chomp.to_i
# Will loop till the condition is true
while x >= 0
  puts x
  x -= 1
end
# Alternative to while, but does the same
until x < 0
  puts x
  x -= 1
end
# Iterate through a given range, and will skip when i == 2
for i in 1..x do
  if i == 2
    next
  puts i
end

#===================================
# ITERATORS
#===================================

# Iterate through values of an array
array = [1, 'Bob', 4.33, 'another string']
# One line syntax
array.each { |value| puts value }
# Block syntax
array.each do |value|
  puts "#{x}. #{value}"
  x += 1
# Iterate through indexes of an array
array.each_index { |i| puts "This is index #{i}" }
# Iterate through indexes and values of an array
array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
# Will iterate over the given data set
a = [1, 2, 3, 4]
# Loop through data set and return new array
a.map { |num| num**2 }
# Alternative way to map
a.collect { |num| num**2 }
end
# Return new array including any items that return true to the expression
a.select { |number| number > 4 }

#===================================
# ARRAY MANIPULATION
#===================================

# Variable for next exemples
array = [1, 'Bob', 4.33, 'another string']
# Return the first value of an array
array.first
# Return the last value of an arra
array.last
# Return the value at given index
array[1]
# Delete value at the end of an array
array.pop
# Add value at the end of an array
array.push('New value')
# Alternate way to push
array << 'New value'
# Add value at the start of an array
array.unshift('New value')
# Delete value at given index
array.delete_at(2)
# Delete value from index
array.delete(4.33)
# Delete duplicates in array (Non destructive)
array.uniq
# Destructive way
array.uniq!
# Return boolean value of weither value is in array
array.include?('Bob')
# Create 1 dimensional array from nested array
array.flatten
# Return a sorted array
array.sort

#===================================
# HASHES
#===================================

# Create an hash
# Old syntax
old_syntax_hash = {:height => '6 ft', :weight => '160 lbs'}
# New syntax (Only if key is Symbol)
syntax_hash = { height: '6 ft', weight: '160 lbs' }
# Add value to hash
hash[:new] = 'New value' 
# Delete value from hash
hash.delete(:new)
# Retrieve value from hash
hash[:weight]
# Merge to hashes (Non destructive)
hash.merge(new_hash)
# To iterate over hashes, we had key to params
hash.each do |key, value|
  puts "#{key} as #{value}"
end
# Evaluate to true if key is in hash
hash.has_key?("test")
# Return value of key if it exist, you can specify an option if it doesn't
hash.fetch('test', 'Test doesn\'t exist')
# Return array of hash keys
hash.keys
# Return array of hash values
hash.values

#===================================
# REGEX
#===================================

# Return index of first char if regex match
'Exemple' =~ /x/
# Return MatchData if regex match
/x/.match 'Exemple'

#===================================
# POINTERS
#===================================

# A variable is a pointer
a = 'Point 1'
# If a variable is = to another they point to the same space in memory
a = b # b = 'Points 1'
# If a variable is reassigned the point to a new memory space
a = 'Point 2'
# You can change the value of the memory space
a << 'Point 3' # Point 3 overwrite the value in Point 2 memory space

#===================================
# BLOCKS, PROCS & LAMBDA
#===================================

# A block is assigned with do end
block do(param1) |param|
  puts param
end
# Blocks can be passed as parameters using &BLOCK_NAME, can only be passed as last parameter, and can take parameters
def use_block(param1,&block)
  block.call(param1)
end
# A procs are blocks wrapped in a proc object and can be saved in a variable
proc = Proc.new do
  puts "I am a proc."
end
# A Lambda is a proc why doesn't bloc on return
lambda = lambda {puts 'I am a lambda'}
lambda = -> {puts 'I am a lambda'} # Alternative way

#===================================
# EXEPTIONS HANDLING
#===================================

# Exeption block used in a block
begin
  # Perform operation that may fail
rescue
  # execute if operation fail
  # like loging the error
end
# Can also rescue reserved words
zero = 0
zero.each { |element| puts element } rescue puts "Can't do that!" # Can't loop on an int
# Rescue can access the error message 
begin
  # We get an error
rescue ERROR_MESSAGE => e
  puts e.message
end