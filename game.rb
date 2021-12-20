 class Game
  attr_accessor :curr_player, :player1, :player2

  def instantiate player1, player2
    @curr_player = 0
    @player1 = player1
    @player2 = player2
  end

  def next_turn
    puts "NEW TURN"
    @curr_player += 1
    if (@curr_player % 2 === 0)
      puts "#{player1}'s Turn"
    else
      puts "#{player2}'s Turn"
    end
 end

 def current_score
  puts "P1 #{self.player1.score} vs P2 #{self.player2.score}"
 end

 def ending_message
  if player1.score == 0
    puts "Player 2 is the winner!"
  elsif player2.score == 0
    puts "Player 1 is the winner!"
  end

  puts "----- Game Over. Thanks for playing. -----"
 end

 end