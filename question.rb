class Question
  attr_accessor :response, :question, :answer

  NUM1 = rand(1..100)
  NUM2 = rand(1..100)

  def instantiate
    @question = "What is #{NUM1} plus #{NUM2}?"
    @answer = NUM1 + NUM2
    @response = nil
  end

  def ask player 
    puts "#{player}: #{self.question}"
    self.response = gets.chomp.to_i
  end

  def validate response 
    if (self.response == " ")
      puts "Please provide an answer."
    elsif (self.response.to_i == self.answer)
      puts "YES! You are correct!"
    else 
      puts "Seriously?! No."
    end
  end
end

