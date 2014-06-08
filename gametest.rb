def new_guess
  @guess = gets.chomp.to_i # is chomp needed here?
end
puts "Enter info"
puts new_guess.to_s
