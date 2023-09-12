class Employee

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        
        if !boss.nil?
            boss.add_employee(self)
        end
    end

    def calc_bonus(multiplier)
        @bonus = (salary) * multiplier
    end

    protected
    attr_accessor :name, :title, :salary, :boss
end