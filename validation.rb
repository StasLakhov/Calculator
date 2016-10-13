module Validation

  def get_user_number_calc(message)
    puts message
    number = gets.to_i
    while number == 0 || number == '' || number.is_a?(Symbol)
      puts 'Not valid input, try again:'
      number = gets.to_i
    end
    return number
  end

  def get_user_number_bmi(message)
    puts message
    number = gets.to_i
    while number == 0 || number >= 300 || number == '' || number.is_a?(Symbol)
      puts 'Not valid input, try again:'
      number = gets.to_i
    end
    return number
  end

  def get_user_symbol(message)
    puts message
    operand = gets.chomp
    while !((operand == "+") || (operand == "-") || (operand == "/") || (operand == "*"))
      puts 'Not valid input, try again:'
      operand = gets.chomp
    end
    return operand
  end
end