require_relative "employee.rb"

class Manager < Employee
    def initialize(name, title)     #maybe salary
        super
        @employees = []
        @bonus = subs_sal * multiplier
        subs_sal = 0 
        @employees.each do |employee|
            subs_sal += employee.salary 
        end
    end

end