def multiply(first_num,second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num,second_num)
  first_num.to_f / second_num.to_f
end

def subtract(first_num,second_num)
  second_num.to_f - first_num.to_f 
end

def mod(first_num,second_num)
  first_num.to_f % second_num.to_f
end

puts "What do you nedd to do? \n 1) multiply \n 2) divide \n 3) subtract \n 4) find remainder"
choice = gets.chomp
puts "Give me a number, please:"
first_num = gets.chomp
puts "Now give me another number, please:"
second_num = gets.chomp

if choice == '1'
  puts "You have chosen to multiply #{first_num} with #{second_num}"
  result = multiply(first_num,second_num)
elsif choice == '2'
  puts "You have chosen to divide"
  result = divide(first_num,second_num)
elsif choice == '3'
  puts "You have chosen to subtract"
  result = subtract(first_num,second_num)
elsif choice == '4'
  puts "You have chosen to find the remainder"
  result = mod(first_num,second_num)
else
  puts "You have made a invalid choice"
end

puts "The result is #{result}"
