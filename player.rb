class Player
  attr_accessor :lives

  def initialize name
    @name = name
    @lives= 3
    @score = 0 
  end

  def lose_life
    self.lives -= 1
  end

end