require './methods.rb'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

cls

puts 'Виселица'

letters = get_letters

errors_count = 0

bad_letters = []
good_letters = []

while errors_count < 7 do
  puts print_status(letters, good_letters, bad_letters, errors_count)

  puts 'Введите следующую букву'

  user_input = get_user_input

  result = check_result(user_input, letters, good_letters, bad_letters)

  if result == -1
    errors_count += 1
  elsif result == 1
    break
  end
end

print_status(letters, good_letters, bad_letters, errors_count)
