 class Game
  attr_accessor :curr_player

  def instantiate
    @curr_player = 0
    @players= ["Player 1", "Player2"]
  end

  def next_turn
    puts "NEW TURN"
    @curr_player += 1
    if (@curr_player % 2 === 0)
      puts "#{players[1]}'s Turn"
    else
      puts "#{players[0]}'s Turn"
    end
 end

 def current_score
  puts "P1 #{} vs P2 #{}"
 end

 def ending_message
  if p1.score == 0
    puts "Player 2 is the winner!"
  elsif p2.score == 0
    puts "Player 1 is the winner!"
  end

  puts "----- Game Over. Thanks for playing. -----"
 end

 end