# your code goes here
require 'pry'

class Person 
attr_reader :name    
attr_accessor :happiness, :hygiene, :bank_account 
    
def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
end

#maria = Person.new("Maria")

def clean?
    if @hygiene > 7
        return true
    else 
        return false
    end
end
    
 def happy? 
    if @happiness > 7
        return true
    else 
        return false
    end
end
        
  def get_paid(salary)
    @bank_account = salary + @bank_account      
    puts "all about the benjamins"
  end

    def take_bath
       new_hygiene = @hygiene + 4 
       puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end 


   def work_out
    new_happy = @happiness + 2 
    new_hygiene2 = @hygiene - 3
    puts  "♪ another one bites the dust ♫"
   end

    def call_friend(friend)
        call_happy = @happiness + 3
    end

end
 
