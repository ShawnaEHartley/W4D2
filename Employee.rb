class Employee

    attr_reader :manager

    def initialize(name, salary, title, manager)     #maybe include salary
        @name = name
        @title = title
        @salary = salary
        @manager = manager
    end

    

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end