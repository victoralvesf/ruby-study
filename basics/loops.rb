5.times do |i|
    puts i + 1 
end

i = 0
while i <= 10 do
    puts "Count #{i}"
    i += 1
end

for i in (0...10)
    puts "Count #{(i + 1) * 10}"
end

avengers = ['Iron Man', 'Hulk', 'Spider Man']

for avenger in avengers
    puts avenger
end

avengers.each do |avenger|
    puts avenger
end
