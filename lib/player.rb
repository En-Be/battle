class Player
  DEFAULT_HP = 100
  DEFAULT_AP = 10
  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(opponent)
    opponent.hp -= DEFAULT_AP
  end
end
