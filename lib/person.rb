# your code goes here
require 'pry'

class Person
    attr_reader :name 
    attr_writer 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
       
        
        
    end
     
    def bounds
    end 

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif
            @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif 
            @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
     end
  

    def clean?
        self.hygiene > 7 ? true : false

     end

    def happy?
        self.happiness > 7 ? true : false

    end

    def get_paid(salary_amount)
       self.bank_account += salary_amount 
       bounds
       return "all about the benjamins" 
    end

    def take_bath
        self.hygiene += 4
        bounds
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

   
    
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        bounds
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(callee)
        self.happiness += 3
        callee.happiness +=3
        bounds
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            bounds
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            bounds
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

    
end 