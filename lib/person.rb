require 'pry'
# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    attr_writer 
   
# get paid/recieve payments
# take bath
# call a friend
# start a conversation
# state if they are happy and clean
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # binding.pry
    end
        def happy?
            if @happiness > 7
                return true 
            else false
            end
        end
        def clean?
            if @hygiene > 7
                return true 
            else false
            end
        end
        def hygiene=(num1)
            
          if num1 >10
            @hygiene =10
         elsif num1 <1
           @hygiene = 0
           
         else 
           @hygiene = num1
         end
        end
        def happiness=(num)
        #   binding.pry
        
        
          if num >10
             @happiness =10
          elsif num <1
            @happiness = 0
            
          else 
            @happiness = num
          end

        end
        def get_paid(sallary_amount)
            @bank_account += sallary_amount
        return "all about the benjamins"
        end
        def take_bath
            self.hygiene=(self.hygiene + 4)
            return "♪ Rub-a-dub just relaxing in the tub ♫"
            
        end
        def work_out
            self.hygiene=(self.hygiene - 3)
            self.happiness=(self.happiness + 2)
            return "♪ another one bites the dust ♫"
        end
        def call_friend(friend)
            self.happiness=(self.happiness + 3)
            friend.happiness=(friend.happiness + 3)
            
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
        def start_conversation(person, topic)
            if topic == "politics"
                self.happiness=(self.happiness - 2)
                person.happiness=(person.happiness - 2)
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness=(self.happiness + 1)
                person.happiness=(person.happiness + 1)
                return "blah blah sun blah rain"
            else return "blah blah blah blah blah"
            end
        end

end

# tommy= Person.new("tommy")

# binding.pry
