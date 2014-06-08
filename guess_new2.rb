#This class allows you to talk to the user
class Messages
  # def initialize
  #   prompt_hello
  # end

  def prompt_hello
    puts "Hello, and thanks for playing this guessing game!"
    puts "I'll choose a number between 0 and 100. See if you can guess it!"
    puts "Please enter your guess:"
  end

  def prompt_if_win
    puts "Wow! You got it!"
  end

  def prompt_if_low
    puts "Aim higher!"
  end

  def prompt_if_high
    puts "Try something lower."
  end
end

# message = Messages.new

#This class allows you to run the game
class Game
  def initialize
    @messages = Messages.new
    @rand = rand(100) + 1
    run
  end

  def run
    @messages.prompt_hello
    flow
  end # run

  def you_won
    @messages.prompt_if_win
    puts "Your number was #{@rand}."

  end # you_won

  def flow
    @guess = gets.chomp.to_i
    if @guess == @rand
      you_won
    end
    while @guess != @rand
      if @guess > @rand
        @messages.prompt_if_high
        flow
      else
        @messages.prompt_if_low
        flow
      end
    end
  end
end

game = Game.new
# game = game.flow
