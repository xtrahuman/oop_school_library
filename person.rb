class Person
  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def initialize(id, age, name = 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = !!parent_permission
  end

  def is_of_age?
    is_of_age = false
    is_of_age = true if @age >= 18
    is_of_age
  end
  private :is_of_age?

  def can_use_services?
    can_use_services = false
    can_use_services = true if @age >= 18 || @parent_permission == true
    can_use_services
  end
end
