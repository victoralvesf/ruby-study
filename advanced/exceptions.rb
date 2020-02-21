# Similar to try catch in JS
begin
    file = File.open('./test.txt')
    puts file.read
rescue Exception => err
    puts err.message
end

# method with exception control
def sum(n1, n2)
    n1 + n2
rescue Exception => err
    puts 'Error:'
    puts err.message
end

value = sum('1', 5)