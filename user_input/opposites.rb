def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
first_number = nil
second_number = nil
def get_number 
  loop do
    puts 'Please enter a positive or negative integer:'
    input = gets.chomp
    return input.to_i if valid_number?(input)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

loop do
  first_number = get_number
  second_number = get_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive. one must be negative.'
  puts '>> Please start again.'
end

result = first_number + second_number
puts "#{first_number} + #{second_number} = #{result}"
