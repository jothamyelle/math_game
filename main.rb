require './game'
require './player'
require './question'

puts "Player 1, please enter your name:"
print "> "
player1name = gets.chomp

puts "Player 2, please enter your name:"
print "> "
player2name = gets.chomp

game = Game.new(player1name, player2name)
game.run_game