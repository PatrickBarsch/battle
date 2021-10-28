class Player

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 70
  end

  def attack(player)
    player.get_attacked
  end

  def get_attacked
    @hitpoints -= 10
  end

end