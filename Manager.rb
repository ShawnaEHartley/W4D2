require_relative "employee.rb"

class Manager < Employee
    def initialize(name, salary, title, manager)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def bonus(multiplier)
        subs_sal = 0 
        self.employees.each do |employee|
            subs_sal += employee.salary 
        end
        subs_sal * multiplier
    end

    # ned = Manager.new("ned", 1000000, "founder", nil)
    # darren = Manager.new("darren", 78000, "TA Manager", ned)
    # shawna = Employee.new("shawna", 12000, "TA", darren)
    # david = Employee.new("david", 10000, "TA", darren)

    # p darren.bonus(4)

end