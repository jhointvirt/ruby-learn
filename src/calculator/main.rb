def multiply(first_number, second_number)
  return first_number * second_number
end

def division(first_number, second_number)
  if second_number == 0
    return 0
  end
  return first_number / second_number
end

def addition(first_number, second_number)
  return first_number + second_number
end

def subtraction(first_number, second_number)
  return first_number - second_number
end

puts 'First number:'
first_number = gets.chomp.to_f
puts 'Second number:'
second_number = gets.chomp.to_f
puts 'Operation:'
operation = gets.chomp

if operation == '*'
  puts multiply(first_number, second_number)
elsif operation == '/'
  puts division(first_number, second_number)
elsif operation == '+'
  puts addition(first_number, second_number)
elsif operation == '-'
  puts subtraction(first_number, second_number)
else
  puts 'Are you an idiot?'
end