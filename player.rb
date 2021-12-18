class Player

  def instantiate(id)
    @id
    @lives= 3
    @score=0
  end

  def lose_life
    @lives -= 1
  end

  # def increment_score
  #   @score += 1
  # end

  # def decrement_score
  #   @score -= 1
  # end

end