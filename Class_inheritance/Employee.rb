class Employee

    attr_reader :manager, :name, :salary

    def initialize(name, salary, title, manager)
        @name = name
        @title = title
        @salary = salary
        @manager = manager
    end

    def add_manager(manager)
        self.manager.add_employee(self)
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end