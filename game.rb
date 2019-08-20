require_relative "helper"
require_relative "question"
require_relative "player"

class Game
  attr_accessor :p1, :p2
  MAX_ROUNDS = 20

  def initialize(p1, p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
    
    @current_round = MAX_ROUNDS
    @current_player = self.p1
  end

  def next_round
    question = Question.new
    puts "#{@current_player.name} your turn."
    question.new_question
    question.validate_answer(gets.chomp.to_i) || @current_player.lose_life
 
    @current_player = @current_player == self.p1 && self.p2 || self.p1
  end
end

game = Game.new(gets.chomp, gets.chomp)

  while game.p1.check_if_alive && game.p2.check_if_alive do
    game.next_round
    game.next_round
    game.p1.current_life
    game.p2.current_life
  end

  if game.p1.check_if_alive
    puts "#{game.p1.name} wins"
  else
    puts "#{game.p2.name} wins"
  end

  puts "Game over"