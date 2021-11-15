def record_to_file(day, record)
  monday_file = './days/monday.txt'
  tuesday_file = './days/tuesday.txt'
  wednesday_file = './days/wednesday.txt'
  thursday_file = './days/thursday.txt'
  friday_file = './days/friday.txt'
  saturday_file = './days/saturday.txt'
  sunday_file = './days/sunday.txt'

  case day
  when 1
    file = File.new(monday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 2
    file = File.new(tuesday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 3
    file = File.new(wednesday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 4
    file = File.new(thursday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 5
    file = File.new(friday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 6
    file = File.new(saturday_file, 'a:UTF-8')
    print(file, record)
    file.close
  when 7
    file = File.new(sunday_file, 'a:UTF-8')
    print(file, record)
    file.close
  else
    abort 'Че за день? У нас их не больше семи, алло, АЛЛО!'
  end
end

private def print (file, record)
  file.puts(record.title)
  file.puts(record.description)
  file.puts(record.date)
end