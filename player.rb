class Player
  attr_accessor :lives, :name, :id

  def initialize name, id
    @id = id
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end

end