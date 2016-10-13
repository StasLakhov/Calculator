require_relative 'validation'
require_relative 'bmi'
require_relative 'calculator'

puts 'What would you like to calculate?'
puts '[1] if calculate numbers'
puts '[2] if calculate BMI'
input = gets .to_i

case input
  when 1
    calc = RunCalc.new
    calc.operation
  when 2
    bmi = RunBmi.new
    bmi.formula
    bmi.result
  else puts 'No such a choise'
end