# require ".person.rb"

class Student < Person
    attr_reader :classroom
    def initialize(classroom)
        super(4,"john" , 18)
        @classroom = classroom
    end
    def play_hooky
        "¯\(ツ)/¯"
    end
end