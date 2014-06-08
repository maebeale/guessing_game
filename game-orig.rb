# This class runs a guessing game.
class GuessGame
  def initialize
    @guess = nil
    @random_num = rand(100)
  end

  def new_guess
    @guess = gets.chomp.to_i # is chomp needed here?
  end

  def starting
    puts 'Hello and thanks for playing numbguess!'
    puts 'Guess a number between 1 & 100 >'
  end

  def calculate
    new_guess
    while @guess != @random_num
      if (@guess >= 1) && (@guess < @random_num)
        puts "Too slow. You're too low. Try again and aim higher!"
        calculate
      elsif (@guess <= 100) && (@guess > @random_num)
        puts 'Too high. Too bad. Try again and tone the guess down.'
        calculate
      else # DO I NEED THE FOLLOWING HERE, AFTER ELSE? new_guess = random_num
        puts "Great job!!! Your number was #{@random_num}."
        puts 'Enter ruby game.rb to play again.'
      end
    end
  end
end
new_guess = GuessGame.new
new_guess.starting
new_guess.calculate
