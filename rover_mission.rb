# thanks to Scott Kobewka. Was very stuck on this problem and his walk through made me able to understand this problem. 

class Rover

	attr_reader :instructions

	def initialize (x = 0, y = 0, direction = "n")
		@x_axis = x
		@y_axis = y
		@direction = direction
	end

	def print_instructions
		puts "WELCOME TO MARS EARTHLING. \nYou are in control of rover. Your begin at (0,0) axis facing NORTH.\ \nTo move ROVER type\ \n(M) For MOVE forward\ \n(L) To turn LEFT\  \n(R)To turn RIGHT.\ \n(exit) to ABORT MISSION.\ "
		@instructions = gets.strip.downcase

		@instructions.each_char do |i|
			case i
				when "l" 
					@direction = WAYS[WAYS.find_index(@direction)-1] 
				when "r"
					@direction = WAYS[(WAYS.find_index(@direction)+1)*0.25] 
				when "m"
					move
				when "exit"
					break
			end
		end

	end

WAYS = ["n", "e", "s", "w"]

	def move
		case @direction
		when "n"
			@y_axis += 1
		when "s"
			@y_axis -= 1
		when "e"
			@x_axis += 1
		when "w"
			@x_axis -= 1
		end
	end

	def to_s
		"#{@x_axis}, #{@y_axis} #{@direction}"
	end

end


rover = Rover.new
while true
	rover.print_instructions
	puts rover

	if rover.instructions == "exit"
	 	print "was your final position. \nMISSION HAS ENDED\ "
	 	exit
	end
end
