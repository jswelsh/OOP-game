class Question
  attr_accessor :random_number_one, :random_number_two, :answer
  def initialize
    @random_number_one = rand(1..20)
    @random_number_two = rand(1..20)
    @answer = @random_number_one + @random_number_two
  end

  def new_question
    @random_number_one = rand(1..20)
    @random_number_two = rand(1..20)
    @answer = @random_number_one + @random_number_two
    puts "What is #{random_number_one} + #{random_number_two}?"
  end
  def correct_answer
    puts "Good job, you can do first grade math!" 
    return true
  end
  def incorrect_answer
    puts "What? no, thats wrong!"
    return false
  end

  def validate_answer(player_input)
    player_input == @answer && self.correct_answer || self.incorrect_answer
  end
end