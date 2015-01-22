class Person #this is a class with named person
  attr_accessor :name, :email, :age # 

	def initialize(name)
		@name = name
	end

	def greeting
    " Hi, my name is #{name}."
  end
end

class Student  
	def learn
		"I get it!"
	end
end

class Instructor 
	def teach
		"Everything in Ruby is an Object!"
	end
end
	

instructor = Person.new("Chris")	
puts instructor.greeting
i = Instructor.new
puts i.teach
student = Person.new("Christina")
puts student.greeting
s = Student.new
puts s.learn





