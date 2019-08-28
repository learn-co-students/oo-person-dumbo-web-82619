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

    # def clamp(input, min, max)
    #     [input, min, max].sort[1]
    # end
    def happiness=(range)
        #nick.happiness = 9
        #range = 19
        if range <= 10 && range >=0
            @happiness = range
        elsif range > 10 
            @happiness = 10
        elsif range < 0
            @happiness = 0
        end
    end

    def hygiene=(range)
        #nick.happiness = 9
        #range = 19
        if range <= 10 && range >=0
            @hygiene = range
        elsif range > 10 
            @hygiene = 10
        elsif range < 0
            @hygiene = 0
        end

    end

    def get_paid(salary)
        # when the variable salary is introduced the sum is added to account
        @bank_account = salary + 25
        return 'all about the benjamins'
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
        newHygiene = @hygiene+4
        # binding.pry
        self.hygiene = (newHygiene)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        new_happiness = @happiness+2
        self.happiness = new_happiness
        newHygiene = @hygiene-3
        self.hygiene = (newHygiene)
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        friend_happiness = @happiness+3
        self.happiness = (friend_happiness)
       person.happiness += 3
        if person.name == "person.name"
            "Hi #{person.name}! It's #{self.name}. How are you?"
        end
    end

    #binding.pry
end



