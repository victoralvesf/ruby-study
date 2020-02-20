# Simple function
def sayHi
    puts 'Hi'
end

sayHi

# Function with return
def sum(number1, number2)
    number1 + number2
end

total = sum(25, 75)
puts total

# Function with parameters
def sayHello(name)
    puts "Hello #{name}!"
end

sayHello('Victor')