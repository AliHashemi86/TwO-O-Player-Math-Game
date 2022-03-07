class Questions
  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @answer = @num1 + @num2
  end

  def question(player)
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
  end 

  def validate(answer)
    @answer === answer
  end

end 
