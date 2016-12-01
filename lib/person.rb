require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness <= 10 && happiness >= 0
      @happiness = happiness
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = 10
    end
  end

  def hygiene=(hygiene)
    if hygiene <= 10 && hygiene >= 0
      @hygiene = hygiene
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = 10
    end
  end

  def bank_account=(bank)
    @bank_account = @bank_account + bank
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend) #class as argument
    #increment the caller and the caller's happiness points by three
    friend.happiness += 3
    self.happiness += 3
    #If Stella calls her friend Felix, the method should return "Hi Felix. It's Stella! How are you?"
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
    end
  end
end
