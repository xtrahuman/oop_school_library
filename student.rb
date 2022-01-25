# require ".person.rb"

class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super(4, 18, 'john')
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
