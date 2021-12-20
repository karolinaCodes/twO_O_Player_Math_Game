class Player
  attr_accessor :lives

  def instantiate name
    @name = name
    @lives= 3
    @score = 0 
  end

  def lose_life
    self.lives -= 1
  end

end