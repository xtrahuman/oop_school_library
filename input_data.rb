require "./person.rb"
require "./student.rb"
require "./teacher.rb"

ab = Person.new(2 ,"ade",1,parent_permission:true )

puts ab.is_of_age?