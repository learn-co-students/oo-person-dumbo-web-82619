# your code goes here
require 'pry'

class Person
    
    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        # #starts w $25
        @happiness = 8
        @hygiene = 8
        # binding.pry
    end


    def get_paid
        # when the variable salary is introduced the sum is added to account
        print "Enter your salary: "
        salary = gets.chomp
        @account = salary + 25
    end

    def clean?
        # when the variable value is greater than 7 the return of the method is true
        hygiene > 7
    end

    def happy?
        # when the variable value is greater than 7 the return of the method is true
        happiness > 7
    end

    def take_bath
    
    end
    #binding.pry
end