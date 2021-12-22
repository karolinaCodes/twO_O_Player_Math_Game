 class Game
  attr_accessor :turn, :player1, :player2, :curr_player

  #player 1 and player 2 are player objects
  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @turn = 0
    @curr_player = player1
  end

  def next_turn
    # don't put this string for the first question
    # if (self.turn != 0)
    #   puts "-----------NEW TURN-----------"
    # end

    self.turn += 1

    if (self.turn % 2 != 0)
      puts "-----#{player1.name}'s Turn-----"
      self.curr_player = self.player1
    else
      puts "-----#{player2.name}'s Turn-----"
      self.curr_player = self.player2
    end
 end

 def current_score
  puts "// P1: #{self.player1.lives}/3 vs P2: #{self.player2.lives}/3 //"
 end

 def ending_message
  if player1.lives == 0
    puts "Player 2 wins with the score of #{player2.lives}/3"
  elsif player2.lives == 0
    puts "Player 1 wins with the score of #{player1.lives}/3"
  end

  puts "----- Game Over. Thanks for playing. -----"
 end

 end