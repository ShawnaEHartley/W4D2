require_relative "manager.rb"

class Employee

    attr_reader :manager

    def initialize(name, salary, title, manager)
        @name = name
        @title = title
        @salary = salary
        @manager = manager
    end

    def add_manager(manager)
        self.manager.add_employee(self)
        # if employee.manager == self
        #     @employees << employee
        # end
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end