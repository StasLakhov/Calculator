class RunBmi

  include Validation

  attr_reader :input, :weight, :height

  def initialize
    @weight = get_user_number_bmi('enter your weight (kg)')
    @height = get_user_number_bmi('enter your height (cm)') * 0.01
  end

  def formula
    @bmi_calculation = (@weight / (@height**2)).round(2)
  end

  def result
    if (@bmi_calculation.to_i > 18.5) && (@bmi_calculation.to_i <= 24.9)
      puts "Your BMI is #{ @bmi_calculation }, weight is normal"
    elsif @bmi_calculation.to_i <= 18.5
      puts "Your BMI is #{ @bmi_calculation }, weight is under normal"
    elsif (@bmi_calculation.to_i >= 25) && (@bmi_calculation.to_i <= 29.9)
      puts "Your BMI is #{ @bmi_calculation }, is over normal"
    elsif @bmi_calculation.to_i >= 30
      puts "Your BMI is #{ @bmi_calculation }, You have obesity"
    end
  end
end