class Link < Post
	def initialize 
		super

		@url = ''
	end

	def read_from_console
		puts 'Adress link: '
		@text = STDIN.gets.chomp

		puts 'Description link: '
		@text = STDIN.gets.chomp
	end

	def to_strings
		time_string = "Created date: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

		return [@url, @text, time_string]
	end
end
