# ==============================================================================
# Instructionsa
# ==============================================================================
=begin
HR has asked us to create a new Shopify Employee Management System! In this 
exercise we will be creating the "skeleton" for this program using Object
Oriented Ruby.

This program is going to have information about all the employees in the company.
All employees have a:
- name
- employee number
- remote or intenal status

There are Executives, Leads, Developers, and Support Agents.

All executives, leads, and developers are internal employees. Support Agents are Remote

Executives get 30 days of vacation, and leads get 20 days of vacation. Developers get 15 days of vacation, and Support Agents get none.

Internal employees should have a #take_vacation method that gets called when an employee takes some vacation. Remote employees don't have access to this method.

Executives and leads can delegate work, while other employees can not. Your program should be able to call a #delegate method on any manager or executive; no other employees should have a #delegate method.

If you pass an employee instance to #puts, it should print information about the employee in this format:

Name: Alex
Type: Lead
Employee Number: 85
Vacation days: 20

Create a set of classes and or modules based on this description. The goal is to design a class relationships that make the basic design needs of this spec, and nothing more. You can omit a method body entirely if no requirements are set (ie: #delegate). Don't worry about any functionality not described in the exercise.
=end 


# ==============================================================================
# Your Program
# ==============================================================================
# Do your work here

module ManagerAblities
    def delegate_work
        puts "#{name} makes someone else do things"
    end
end

class Employee
    
    attr_accessor :name, :type, :employee_id
    
        def initialize (name, employee_id, type)
            self.name = name
            self.employee_id = employee_id
            self.type = type
        end

        def to_s
            "Name : #{name}\nType : #{type}\nEmployee id: #{employee_id}"
        end
end

class InternalEmployee < Employee

    attr_accessor :vacation

    def initialize (name, employee_id, type, vacation)
        super(name, employee_id, type)
        self.vacation = vacation
    end 

    def take_vacation
        puts "#{name} is taking a vacation!" 
    end

    def to_s
        super + "\nVacation: #{vacation}"
    end

    def self.exec(name, employee_id)
        self.new(name, employee_id, "Exec", 30)
    end

    def self.lead(name, employee_id)
        self.new(name, employee_id, "Lead", 20)
    end

    def self.dev(name, employee_id)
        self.new(name, employee_id, "Dev", 15)
    end
end    

class ExternalEmployee < Employee

    def initialize (name, employee_id, type)
        super(name, employee_id, type)
    end 

    def self.support_agent(name, employee_id)
        self.new(name, employee_id, "support")
    end

end 

puts laura = InternalEmployee.exec("Laura","1111")
laura.take_vacation
puts timmy = ExternalEmployee.support_agent("timmy","1112")