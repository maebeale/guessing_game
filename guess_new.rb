#This class allows you to build a guess
class Number
  def initialize
    @value = 0
    guess
    rand_method
  end

  def value
    @value
  end

  def rand_method
    @value = rand(100) + 1
  end

  def guess
    @value = gets.chomp.to_i
  end
end

# guess = Number.new
# guess


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

  def prompt_win
    puts "Wow! You got it!"
  end

  def prompt_low
    puts "Aim higher!"
  end

  def prompt_high
    puts "Try something lower."
  end
end

# message = Messages.new

#This class allows you to run the game
class Game
  def initialize
    @messages = Messages.new
    flow
    @number = Number.new
  end

  def flow
    @messages.prompt_hello
    if @number.guess.value == @number.rand_method.value
      return @messages.prompt_win
    end
    while @number.guess != @number.rand_method
      if @number.guess > @number.rand_method
        @messages.prompt_high
      else
        @messages.prompt_low
      end
    end
  end
end

game = Game.new
# game.flow
# game = game.flow
