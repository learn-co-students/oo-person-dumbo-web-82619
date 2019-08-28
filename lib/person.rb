# your code goes here
require 'pry'

# clown_names = [ "Bluster", "Flaky", "Raspy", "Floppy", "Krusty", "Baby" ]

class Person 
    attr_accessor :happiness, :hygiene, :bank_account 
    attr_reader :name 
    attr_writer
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
        # @friend = friend
        # @get_paid = get_paid
        # @take_bath = take_bath
        # @work_out = work_out
        # @call_friend = call_friend
        # @start_converstaion = start_converstaion
    end 

    def clean?
        #hygiene 
        if @hygiene > 7 
            return true 
        else 
            return false 
        end
    end 

    def happiness()
        #hygiene  
        # happiness = @happiness
        if @happiness > 10
            @happiness =10
        elsif @happiness < 1
            @happiness = 0
        else
            @happiness 
        end
    end 


    def hygiene()
        if @hygiene > 10
            @hygiene =10
        elsif @hygiene < 1
            @hygiene = 0
        else
            @hygiene
        end
    end 

    # def happy?()
    #     if @happiness > 7 == true
    #     else false 
    # end 

    def happy?
        if @happiness > 7 
            return true
        else 
            return false 
        end
    end 

    def clean?
        if self.hygiene > 7
            return true
        else 
            return false 
        end
    end 

    def get_paid(salary_amount)
        @bank_account += salary_amount 
        return "all about the benjamins"

    end    

    def take_bath()
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"       
    end 

    def work_out()
        self.happiness += 2
        self.hygiene -= 3 
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3 
        return "Hi #{callee.name}! It's #{self.name}. How are you?"       
    end 
    
    def start_conversation(friend, topic)
        if topic == "politics" 
            self.happiness -= 2
            friend.happiness -= 2 
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end 
    end 

  
end


# penny = Person.new('pen')
# penny.take_bath
# binding.pry
