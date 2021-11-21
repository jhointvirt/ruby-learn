require_relative './models/post.rb'
require_relative './models/link.rb'
require_relative './models/task.rb'
require_relative './models/memo.rb'

puts 'What do you want to write to notepad? '
choices = Post.post_types
choice = -1

while choice < 0 && choice < choices.size
	choices.each_with_index do |type, index|
		puts "\t#{index}. #{type}"
	end

	choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "good"
gets