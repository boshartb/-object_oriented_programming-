class Person #this is a class with named person
  attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greeting
    " Hi, my name is #{name}."
  end
end


class Instructor 
	def teach
		"Everything in Ruby is an Object!"
	end
instructor = Person.new("Chris")	
puts instructor.greeting
i = Instructor.new
puts i.teach
# puts i.learn
end
	
class Student  
	def learn
		"I get it!"
	end
student = Person.new("Christina")
puts student.greeting
s = Student.new
puts s.learn
# puts s.teach
end

puts "Q:  Why can't you call the teach method on your student instance? "
puts "A: The teach and learn cant be used on a different method because there is no unifying variables."





