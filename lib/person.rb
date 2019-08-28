class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        # @happiness = happiness
        @hygiene = hygiene
        if happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def happiness=(happy)
        if happy >= 10
            @happiness = 10
        elsif happy <= 0
            @happiness = 0
        else
            @happiness = happy
        end
    end

    def hygiene=(cleanliness)
        if cleanliness >= 10
            @hygiene = 10
        elsif cleanliness <= 0
            @hygiene = 0
        else
            @hygiene = cleanliness
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end

