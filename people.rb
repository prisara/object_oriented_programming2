# create a parent Person class
class Person

  attr_accessor :name

# add name attribute and an initializer to set the name
  def initialize(name)
    @name = name
  end

# define greeting method which both Instructor and Student classes will inherit
  def greeting
    puts "Hi, my name is #{@name}."
  end

end

# Create Student and Instructor classes
class Student < Person # inherits from parent Person class

# define learn method
  def learn
    puts "I get it!"
  end

end

class Instructor < Person # inherits from parent Person class

# define teach method
  def teach
    puts "Everything in Ruby is an Object."
  end

end

# create an instance of Instructor and call his greeting
chris = Instructor.new("Chris")
puts chris.greeting

# create an instance of Student and call her greeting
christina = Student.new("Christina")
puts christina.greeting

# call teach method on Instructor instance and learn method on Student instance
puts chris.teach
puts christina.learn

# call teach method on Student instance, why doesn't this work
puts christina.teach
# => undefined method 'teach' for student
# teach method belongs to the Instructor instance
