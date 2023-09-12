require_relative 'employee'

class Manager < Employee
    def initialize(name, title, salary, boss)
        super

        @employees = []
    end

    def add_employee(employee)
        employees.push(employee)
    end

    def calc_bonus(multiplier)
        total_salary * multiplier
    end

    def total_salary
        sum = 0

        employees.each do |employee|
            sum += employee.salary

            if employee.is_a?(Manager)
                sum += employee.total_salary
            end
        end
        sum
    end

    protected
    attr_accessor :name, :title, :salary, :boss, :employees, :bonus
    
end

ned = Manager.new('Ned', 'Founder', 1000000, nil)
darren = Manager.new('Darren', 'TA Manager', 78000, ned)
shauna = Employee.new('Shauna', 'TA', 12000, darren)
david = Employee.new('David', 'TA', 10000, darren)

p ned.calc_bonus(5)
p david.calc_bonus(3)



