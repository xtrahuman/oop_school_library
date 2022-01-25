require './person'
require './student'
require './teacher'

person_ade = Person.new(5, 'ade', parent_permission: false)
student_john = Student.new('art', 18, 'john', parent_permission: true)
teacher_gala = Teacher.new('doctor', 20, 'peter', parent_permission: true)
puts person_ade.can_use_services?
puts teacher_gala.specialization
puts student_john.age
puts teacher_gala.can_use_services?
