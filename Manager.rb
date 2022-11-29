require_relative "employee.rb"

class Manager < Employee

    attr_reader :employees

    def initialize(name, salary, title, manager)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def add_subs
        @employees.each do |employee|
            if employee.employees != nil
                @employees += employee.employees
            end
        end
    end

    def print_employees
        @employees.each do |employee|
            p employee.name
        end
    end

    def bonus(multiplier)
        subs_sal = 0 
        self.employees.each do |employee|
            subs_sal += employee.salary 
        end
        subs_sal * multiplier
    end

  

end

ned = Manager.new("ned", 1000000, "founder", nil)
darren = Manager.new("darren", 78000, "TA Manager", ned)
shawna = Employee.new("shawna", 12000, "TA", darren)
david = Employee.new("david", 10000, "TA", darren)

david.add_manager(darren)
shawna.add_manager(darren)
ned.add_employee(darren)
ned.add_subs
p ned.bonus(5)