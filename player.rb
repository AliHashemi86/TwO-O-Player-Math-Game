class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end 

  def lose
    @score -= 1
  end 

  def win 
    if @score < 3
      @score += 1
    end
  end 

end 
