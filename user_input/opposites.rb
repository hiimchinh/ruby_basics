def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_number = nil
second_number = nil
loop do
  loop do
    puts '>> Please enter a positive or a negative number:'
    first_number = gets.chomp
    break if valid_number?(first_number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
  loop do
    puts '>> Please enter a positive or a negative number:'
    second_number = gets.chomp
    break if valid_number?(second_number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
  first_number = first_number.to_i
  second_number = second_number.to_i
  break if (first_number > 0 && second_number < 0) || (first_number < 0 && second_number > 0)
  puts 'Sorry. One integer must be positive, one integer must be negative.'
  puts 'Please start over.'
end

result = first_number + second_number
  puts "#{first_number} + #{second_number} = #{result}"
