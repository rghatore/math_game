require './Player'
require './Question'
require './Turn'

puts "Welcome to this Math game!"
puts "Goal: sum the two random numbers provided."
puts "Constraint: three incorrect answers and you lose the game!"
puts "Try to speed up for fun!"
puts "Ctrl + C to exit at any time."

print "Please enter name for player 1: "
name1 = gets.chomp
print "Please enter name for player 2: "
name2 = gets.chomp

player1 = Player.new(name1)
player2 = Player.new(name2)
question = Question.new
turn = Turn.new

while player1.lives > 0 && player2.lives > 0 do
  puts "---#{player1.name}'s turn---" unless turn.even
  puts "---#{player2.name}'s turn---" if turn.even
  question.prompt
  if question.validate
    puts "You're correct!"
  else
    puts "Oops, that is incorrect!"
    player1.lives -= 1 unless turn.even
    player2.lives -= 1 if turn.even
  end
  turn.update
  puts "#{player1.name}'s lives remaining: #{player1.lives}, #{player2.name}'s lives remaining: #{player2.lives}"
end

puts "#{player1.name} won with #{player1.lives} lives remaining!" if player1.lives > 0
puts "#{player2.name} won with #{player2.lives} lives remaining!" if player2.lives > 0
puts "----- GAME OVER -----"
puts "Thanks for playing!"



