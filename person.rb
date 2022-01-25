class Person
  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = !!parent_permission
  end

  def of_age?
    is_of_age = false
    is_of_age = true if @age >= 18
    is_of_age
  end
  private :of_age?

  def can_use_services?
    can_use_services = false
    can_use_services = true if @age >= 18 || @parent_permission == true
    can_use_services
  end
end
