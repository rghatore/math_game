require './Player'
require './Question'
require './Turn'

print "Please enter name for player 1: "
name1 = gets.chomp
print "Please enter name for player 2: "
name2 = gets.chomp

player1 = Player.new(name1)
player2 = Player.new(name2)

question = Question.new

turn = Turn.new


while player1.lives > 0 && player2.lives > 0 do
  question.prompt
  turn.update
  puts "turn #: #{turn.number}"
  player1.lives = 0
end


