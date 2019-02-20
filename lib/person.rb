require 'pry'
# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene, :clean, :get_paid, :take_bath

  def initialize(name)
    @name = name
    @bank_account = 25 # sets the balance at $25
    @happiness = 8 # sets the happiness index at 8 when initialized
    @hygiene = 8 # sets the hygiene index at 8 when initialized
  end

  # happiness points cannot be less than 0 or more than 10
  def happiness=(happiness_points)
    if happiness_points > 10
      @happiness = 10
    elsif happiness_points < 0
      @happiness = 0
    else
      @happiness = happiness_points
    end
  end

  # hygiene points cannot be less than 0 or more than 10
  def hygiene=(hygiene_points)
    if hygiene_points > 10
      @hygiene = 10
    elsif hygiene_points < 0
      @hygiene = 0
    else
      @hygiene = hygiene_points
    end
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
    @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)

  end

  def start_conversation(person, topic)
    if topic == "politics"
      "blah blah partisan blah lobbyist"
    end
  end

end
