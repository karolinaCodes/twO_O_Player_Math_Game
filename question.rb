class Question
  attr_accessor :response, :question, :answer

  NUM1 = rand(1..10)
  NUM2 = rand(1..10)

  def initialize
    @question = "What is #{NUM1} plus #{NUM2}?"
    @answer = NUM1 + NUM2
    @response = nil
  end

  def ask player 
    puts "#{player}: #{self.question}"

    self.response = gets.chomp.to_i
    if (self.response.to_i == self.answer)
      puts "YES! You are correct!"
      true
    else 
      puts "Seriously?! No."
      false
    end
  end

  def validate response 
    
  end
end

