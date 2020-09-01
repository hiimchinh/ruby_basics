def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp
  unless valid_number?(numerator)
    puts '>> Invalid input. Only integers are allowed.'
    next
  end
  puts '>> Please enter the denominator:'
  denominator = gets.chomp
  unless valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
    next
  end
  begin
    result = numerator.to_i / denominator.to_i
  rescue ZeroDivisionError => e
    puts '>> Invalid input. A denominator of 0 is not allowed'
    next
  end
  puts "#{numerator} / #{denominator} is #{result}"
  break
end