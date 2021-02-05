class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def happiness=(change)
        @happiness = change
        @happiness = [@happiness,0,10].sort[1]
    end
    
    def hygiene=(change)
        @hygiene = change
        @hygiene = [@hygiene,0,10].sort[1]
    end
    
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene=@hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene=@hygiene - 3
        self.happiness=@happiness + 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness=@happiness + 3
        friend.happiness=friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness=@happiness - 2
            person.happiness=person.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=@happiness + 1
            person.happiness=person.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
