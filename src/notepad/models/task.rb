require 'date'

class Task < Post
	def initialize 
		super

		@due_date = Time.now
	end

	def read_from_console
		puts 'What we need to do: '
		@text = STDIN.gets.chomp
		puts 'Due date: '
		due = STDIN.gets.chomp

		@due_date = Date.parse(due)
	end

	def to_strings
		time_string = "Created date: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
		deadline = "Due date: #{@due_date}"
		return [deadline, @text, time_string]
	end
end
