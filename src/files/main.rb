current_path = File.dirname(__FILE__ )
questions_file = current_path + '/data/questions.txt'
answers_file = current_path + '/data/answers.txt'

if File.exist?(questions_file) && File.exist?(answers_file)
  file_question = File.new(questions_file, 'r:UTF-8')
  file_answer = File.new(answers_file, 'r:UTF-8')

  questions = file_question.readlines
  answers = file_answer.readlines

  file_question.close
  file_answer.close


  iterator = 0
  while iterator < questions.length do

    puts questions[iterator]
    answer = STDIN.gets
    if answer == answers[iterator]
      puts 'Правильный ответ!'
    else
      puts "Неправильный ответ. Правильный #{answers[iterator]}"
    end

    iterator += 1
  end
else
  puts 'файл не найден'
end