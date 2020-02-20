number1 = 0
number2 = 0
total = 0

puts 'Number 1:'
number1 = gets.chomp.to_i

puts 'Number 2:'
number2 = gets.chomp.to_i

total = number1 + number2
puts "The sum of #{number1} + #{number2} equals to #{total}"

# ---

value1 = 12
value2 = 12

puts "Is #{value1} bigger than #{value2}? " + (value1 > value2).to_s
puts "Is #{value1} lower than #{value2}? " + (value1 < value2).to_s
puts "Is #{value1} bigger or equals to #{value2}? " + (value1 >= value2).to_s
puts "Is #{value1} lower or equals to #{value2}? " + (value1 <= value2).to_s
puts "Is #{value1} equals to #{value2}? " + (value1 == value2).to_s
# or
puts "Is #{value1} equals to #{value2}? " + value1.eql?(value2).to_s
puts "Is #{value1} not equal to #{value2}? " + (value1 != value2).to_s

# Combined comparison operator. 
# Returns: 
# 0 if first operand equals second
# 1 if first operand is greater than the second
# -1 if first operand is less than the second.

puts value1 <=> value2
