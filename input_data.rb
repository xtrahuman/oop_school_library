require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

person_ade = Person.new(5, 'adedhdhh10dhdhhdhdh3', parent_permission: false)
student_john = Student.new('art', 18, 'john', parent_permission: true)
student_peter = Student.new('science', 18, 'pete', parent_permission: true)
teacher_gala = Teacher.new('doctor', 20, 'peter', parent_permission: true)
puts person_ade.can_use_services?
puts teacher_gala.specialization
puts student_john.age
puts teacher_gala.can_use_services?
puts person_ade.name
puts person_ade.validate_name
puts person_ade.name

grade1 = Classroom.new('grade1')
grade1.student
grade1.add_student(student_john)
grade1.student
grade1.add_student(student_peter)
puts grade1.student.map(&:name)

student_john.classroom = grade1
puts student_john.classroom.label

book_tales = Book.new('tales', 'moonlight')
book_rivers = Book.new('rivers', 'chike')

rental_one = Rental.new('2017-12-22', student_john, book_tales)
rental_two = Rental.new('2017-12-31', student_john, book_rivers)
rental_three = Rental.new('2017-12-31', student_peter, book_rivers)

puts book_tales.rental.count
puts book_rivers.rental.count

rental_one.date
rental_two.date
rental_three.date
