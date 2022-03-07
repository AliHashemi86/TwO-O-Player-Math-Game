class Game 
  attr_accessor :p1, :p2, :current_player, :winner

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1
  end 

  def status
    puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
  end 
  
  def switch
    @current_player = @current_player === @p1 ? @p2 : @p1
    
    # if @current_player === @p1
    #    @current_player = @p2
    # else
    #    @current_player = @p1
    # end
  end
  
  def winner
    if @p1.score > @p2.score
      @winner = @p1
    else
      @winner = @p2
    end
  end 

end 
