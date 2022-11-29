ned = Employee.new("ned", 1000000, "founder", nil)
darren = Employee.new("darren", 78000, "TA Manager", ned)
shawna = Employee.new("shawna", 12000, "TA", darren)
david = Employee.new("david", 10000, "TA", darren)

p darren.bonus(4)