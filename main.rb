require './game'
require './player'
require './questions'

puts "Welcome to the Math Game"

player1 = Player.new("player1")
player2 = Player.new("player2")

game = Game.new(player1, player2)

while game.p1.score > 0 && game.p2.score > 0
  ques = Questions.new
  ques.question(game.current_player)
  answer = gets.chomp.to_i

  if ques.validate(answer)
    puts "#{game.current_player.name}: YES! You're correct."
    game.current_player.win
  else
    puts "#{game.current_player.name}: NO! You're wrong."
    game.current_player.lose
  end

  game.switch 
  puts game.status
  puts '---- NEXT ROUND ----'

end

game.winner
puts "#{game.winner.name} wins with the score of #{game.winner.score}/3"
puts "----- GAME OVER -----"
puts 'Goodbye'
