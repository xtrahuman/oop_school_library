require "./person.rb"
require "./student.rb"
require "./teacher.rb"

ab = Person.new(2 ,"ade",1,parent_permission:false )
ns = Student.new("art")
puts ab.can_use_services?
puts ns.parent_permission