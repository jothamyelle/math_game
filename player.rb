class Player

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  attr_reader :name
  attr_accessor :lives

end