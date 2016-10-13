class RunCalc

  attr_reader :input, :first_int, :operand, :second_int

  include Validation

   def initialize
    @first_int = get_user_number_calc('Enter first integer')
    @operand = get_user_symbol('Enter operand')
    @second_int = get_user_number_calc('Enter second integer')
  end

  def addition(first_int, second_int)
    puts @first_int + @second_int
  end
  def substraction(first_int, second_int)
    puts @first_int - @second_int
  end
  def multiply(first_int, second_int)
    puts @first_int * @second_int
  end
  def division(first_int, second_int)
    puts @first_int / @second_int
  end

  def operation
    if @operand == '+'
      addition(@first_int, @second_int)
    elsif @operand == '-'
      substraction(@first_int, @second_int)
    elsif @operand == '*'
      multiply(@first_int, @second_int)
    elsif @operand == '/'
      division(@first_int, @second_int)
    end
  end

end