require "pry"

class Person
    attr_reader(:name, :happiness, :hygiene)
    #attr_writer(:hygiene)
    attr_accessor(:bank_account)

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # binding.pry
  end

  
  # #Set method
  def happiness=(happiness)

    if happiness >= 0 && happiness <= 10
      @happiness = happiness
    elsif happiness > 10
      @happiness = 10
    elsif happiness < 0 
      @happiness = 0
    end   

  end

    #set method
  def hygiene=(hygiene)

    if hygiene >= 0 && hygiene <= 10
        @hygiene = hygiene
    elsif hygiene > 10
        @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    end

  end

  def happy?()
    if @happiness > 7
        return true
    else
        return false
    end
  end

  def clean?()
    if @hygiene > 7
        return true
    else
        return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    @bank_account
    return "all about the benjamins"
  end

    def take_bath

        new_value = @hygiene + 4
        
        self.hygiene = new_value

        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      new_happiness = @happiness + 2
      new_hygiene = @hygiene - 3

      self.hygiene = new_hygiene
      self.happiness = new_happiness


      return "♪ another one bites the dust ♫"
    end

    def call_friend(callees = "friend")

        new_happiness = @happiness += 3
        callees_new_happines = callees.happiness += 3

        #callees.happiness = callees_new_happines
        self.happiness = new_happiness

        message = "Hi #{callees.name}! It's #{@name}. How are you?"
      
        return message
      
      #binding.pry
    end

    def start_conversation(person, topic)

      if topic == "politics"
        new_happiness = @happiness - 2
        person_new_happiness = person.happiness - 2

        self.happiness = new_happiness
        person.happiness = person_new_happiness

        return "blah blah partisan blah lobbyist"

      elsif topic == "weather"
        new_happiness = @happiness + 1
        person_new_happiness = person.happiness + 1

        self.happiness = new_happiness
        person.happiness = person_new_happiness

        return "blah blah sun blah rain"

      else

        return "blah blah blah blah blah"

      end

    end

end
