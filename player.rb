class Player
  attr_accessor :name, :life
  MAX_LIFE = 3

 def initialize(name)
   @name = name
   @life = MAX_LIFE
 end

 def lose_life
  @life -= 1
  #self.current_life
 end
 def player_dead
  puts "#{@name} is dead, well that's unfortunate!"
  return false
 end
 def current_life
  puts "#{@name}: #{@life}/#{MAX_LIFE}"
  return true
 end

 def check_if_alive
  @life > 0
 end

end
