require './person'
require './student'
require './teacher'

person_ade = Person.new(2, 1, 'ade', parent_permission: false)
student_john = Student.new('art')
teacher_gala = Teacher.new('doctor')
puts person_ade.can_use_services?
puts teacher_gala.specialization
puts student_john.parent_permission
puts teacher_gala.can_use_services?
