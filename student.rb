class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super(18, 'john')
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
