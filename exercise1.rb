class Student  
	def learn
		puts "I get it!"
	end
end

class Instructor 
	def teach
		puts "Everything in Ruby is an Object!"
	end
end

s = Student.new
puts s.learn

i = Instructor.new
puts i.teach