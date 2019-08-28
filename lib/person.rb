require "pry"
class Person
    attr_reader(:name)
    attr_writer(:happiness, :hygiene)

  def initialize(name)
    @name = name
    @bank_account = "$"
    @happiness = 8
    @hygiene = 8
  end
  def happiness
    if happiness > 0 && happiness < 10
        @happiness = happiness
    end    
  end

  def hygiene
    if hygiene > 0 && hygiene < 10
        @hygiene = hygiene
    end
  end

  def happy?(happiness)
    if happiness > 7
        return true
    else
        return false
    end
  end

  def clean?(hygiene)
    if hygiene < 7
        return true
    else
        return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "$#{@bank_account}"
  end

    def take_bath
        @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

end
