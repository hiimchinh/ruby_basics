PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  try_password = gets.chomp
  break if try_password == PASSWORD
  puts '>> Invalid password!'
end
puts 'Welcome!'


