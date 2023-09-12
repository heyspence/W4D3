require_relative 'employee'

class Manager < Employee
    def initialize(name, title, salary, boss, *employees)
        super(name, title, salary, boss)

        @employees = employees
    end

    def add_employee(employee)
        employees << employee
    end

    def bonus(multiplier)
        sum = employees.salary.sum
        @bonus = (sum) * multiplier
    end

    protected
    attr_accessor :name, :title, :salary, :boss, :employees
    
end

p ned = Manager.new('Ned', 'Founder', 1000000, nil)
p darren = Manager.new('Darren', 'TA Manager', 78000, ned)
p shauna = Employee.new('Shauna', 'TA', 12000, darren)
p david = Employee.new('David', 'TA', 10000, darren)

ned.add_employee(darren)

