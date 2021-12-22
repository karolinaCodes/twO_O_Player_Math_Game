require './game.rb'
require './player.rb'
require './question.rb'
require 'active_support/all'


def new_game
puts "-----WELCOME TO THE TWO-O-PLAYER MATH GAME----- \n Please enter your names. \n Player 1's name: "
player1 = Player.new(gets.chomp, "1")
puts "Player 2's name: "
player2 = Player.new(gets.chomp, "2")

game = Game.new(player1, player2)

  # game loop
  while player1.lives > 0 && player2.lives > 0
    game.next_turn
    question = Question.new

    result = question.ask(game.curr_player.name)

    if (!result) 
    curr= game.curr_player.id
    curr == "1" ? player1.lose_life : player2.lose_life
    end

    game.current_score
  end

game.ending_message

end

new_game