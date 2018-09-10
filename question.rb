class Question

  def initialize(twoNumbers)
    num1 = twoNumbers[0].to_i
    num2 = twoNumbers[1].to_i
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end
  
  attr_reader :question
  attr_reader :answer

end