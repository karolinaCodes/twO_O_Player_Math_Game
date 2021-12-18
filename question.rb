class Question

  attr_accessor :response
  def instantiate
    @num1 = rand(1..100)
    @num2 = rand(1..100)
    @question = "What is #{@num1} plus #{@num2}"
    @answer = @num1 + @num2
    @response = nil
  end

  def ask(player)
    puts "#{player}: #{@question}"
  end

  def validate(response)
    if (response == " ")
      puts "You did not write answer."
    elsif (response.to_i == @answer)
      puts "YES! You are correct!"
    else 
      puts "Seriously?! No."
    end
  end
end