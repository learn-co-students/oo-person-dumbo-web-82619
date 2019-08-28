# your code goes here
class Person
    
    attr_reader :name, :account
    attr_writer :account

    def initialize=(name, account, happiness, hygiene)
    @name = name
    @account = 25
    #starts w $25
    @happiness = happiness
    @hygiene = hygiene
    end


    def get_paid
        # when the variable salary is introduced the sum is added to account
    
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

end

Person.new