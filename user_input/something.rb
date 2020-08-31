question = '>> Do you want me to print something? (y/n)'

loop do
  puts question
  answer = gets.chomp
  if answer.downcase == 'y'
    puts 'something'
    break
  elsif answer.downcase == 'n'
    break
  else
    puts '>> Invalid input! Please enter y or n'
  end
end