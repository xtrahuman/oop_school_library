require './person'
require './student'
require './teacher'

person_ade = Person.new(5, 'ade', parent_permission: false)
student_john = Student.new('art', 18, 'john')
teacher_gala = Teacher.new('doctor', 21, 'gala')
puts person_ade.can_use_services?
puts teacher_gala.specialization
puts student_john.parent_permission
puts teacher_gala.can_use_services?
