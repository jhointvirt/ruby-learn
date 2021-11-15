def cls
  system "cls"
end

def input_day
  input = 0
  while input < 1 or input > 7 do
    puts 'В какой день хочешь записать?
      1 - Понедельник
      2 - Вторник
      3 - Среда
      4 - Четверг
      5 - Пятница
      6 - Суббота
      7 - Воскресенье'
    input = STDIN.gets.to_i
    cls
  end

  return input
end

def input_title
  puts 'Введите заголовок для записи'
  return STDIN.gets.chomp
end

def input_description
  puts 'Введите саму запись'
  return STDIN.gets.chomp
end