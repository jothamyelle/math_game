class Question

  def initialize(num1, num2)
    @question = "What does #{num1.to_i} plus #{num2.to_i} equal?"
    @answer = num1.to_i + num2.to_i
  end
  
  attr_reader :question
  attr_reader :answer

end