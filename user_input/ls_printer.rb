answer = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  answer = gets.chomp.to_i
  break if answer >= 3
  puts "That's not enough lines."
end

while answer > 0
  puts 'Launch School is the best!'
  answer -= 1
end