class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super(18, 'john', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
