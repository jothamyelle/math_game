class Game

  NUMBER_OF_LIVES = 3

  def initialize(player1, player2)
    @inProgress = true
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @currentGuesser = @player2
    @currentAsker = @player1
  end

  def run_game
    while(@inProgress) do
      puts "#{@currentGuesser.name}'s turn to guess."
      puts "#{@currentAsker.name}, enter two numbers without spaces (ie. (5 and 4) would be 54):"
      print "> "
      userInput = gets.chomp
      question = Question.new(userInput)
      display_question(question)
      player_answer = get_player_answer
      correct = (player_answer == question.answer)
      
      if correct
        puts "CORRECT! Good job!"
        puts "#{@player1.name}: #{@player1.lives}/#{NUMBER_OF_LIVES} vs #{@player2.name}: #{@player2.lives}/#{NUMBER_OF_LIVES}"
      else
        puts "WRONG! Nice try!"
        @currentGuesser.lives -= 1
        if(@currentGuesser.lives === 0)
          puts "#{@currentAsker.name} wins with a score of #{@currentAsker.lives}/#{NUMBER_OF_LIVES}"
        else
          puts "#{@player1.name}: #{@player1.lives}/#{NUMBER_OF_LIVES} vs #{@player2.name}: #{@player2.lives}/#{NUMBER_OF_LIVES}"
        end
      end

      if(@player1.lives === 0 || @player2.lives === 0)
        @inProgress = false;
      end

      if(@inProgress)
        puts "----- NEW TURN -----"
        swap = @currentAsker
        @currentAsker = @currentGuesser
        @currentGuesser = swap
      else
        puts "----- GAME OVER -----"
        puts "Goodbye!"
      end

    end

  end

  def display_question(question)
    puts question.question
  end

  def get_player_answer
    print "> "
    gets.chomp.to_i
  end

end