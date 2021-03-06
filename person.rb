require './corrector'
class Person
  attr_reader :id, :rental
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rental = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission == true
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end
end
