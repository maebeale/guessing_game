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
    puts 'Hello world, and thanks for playing this guessing game!'
    puts "You've got 5 tries. Guess a number between 1 & 100 >"
  end

  def guesslower
    puts 'Too high. Too bad. Try again and tone the guess down.'
#    puts "#{@num_tries} tries left."
    new_guess
#    count
  end

  def guesshigher
    puts 'Uh, oh! Too low. Try again and aim higher!'
#    puts "#{@num_tries} tries left."
    new_guess
#    count
  end

  def guesscongrats
    puts "Great job!!! Your number was #{@random_num}."
    puts 'Enter ruby game.rb to play again.'
  end

#  def count
#    max_tries = 5
#    @num_tries = max_tries - 1
#    while @num_tries > 0
#      @num_tries = max_tries - 1
#      puts @num_tries
#    end
#  end

  def calculate
    new_guess
    while @guess != @random_num
      if (@guess <= 100) && (@guess > @random_num)
        guesslower
      elsif (@guess >= 1) && (@guess < @random_num)
        guesshigher
      end
    end
    guesscongrats
  end
end
new_guess = GuessGame.new
new_guess.starting
new_guess.calculate
