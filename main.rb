require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def run
    puts 'welcome to the school library'
    loop do
      info
      option = gets.chomp
      break if option == '7'

      get_option(option)
    end
    puts 'thank for using the library'
  end

  def info
    puts
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def get_option(option)
    case option
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rentals_by_person_id
    else
      puts 'Please enter a number between 1 and 7'
    end
  end

  def list_all_books
    puts 'There are no books yet! Kindly add a book.' if @books.empty?

    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    sleep 0.75
  end

  def list_all_people
    puts 'There are no people in this list! Kindly add a student or a teacher.' if @people.empty?

    @people.each do |person|
      puts "[#{person.class}] id: #{person.id}, name: #{person.name} age: #{person.age}"
    end
    sleep 0.75
  end

  def create_person
    print 'Do you want to create a student (1) or teacher (2) [Input a number]: '
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid input. Kindly type 1 or 2'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'class:'
    classroom = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = parents_permission
    student = Student.new(classroom, age, name, parent_permission: parent_permission)
    @people << student

    puts 'Student created successfully'
    sleep 0.75
  end

  def parents_permission
    feedback = gets.chomp.downcase
    case feedback
    when 'y'
      true
    when 'n'
      false
    else
      puts
      puts 'enter correct input y or n, y means yes and n means no'
      parents_permission
    end
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name)
    @people << teacher

    puts 'Teacher created successfully'
    sleep 0.75
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book

    puts 'Book added successfully'
    sleep 0.75
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }

    book_id = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_id = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp.to_s

    rental = Rental.new(date, @books[book_id], @people[person_id])
    @rentals << rental

    puts 'Rental created successfully'
    sleep 0.75
  end

  def list_rentals_by_person_id
    puts 'select ID of person'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    id = gets.chomp.to_i

    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
    sleep 0.75
  end
end

def main
  app = App.new
  app.run
end

main
