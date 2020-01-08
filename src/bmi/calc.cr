class BmiValues::Calculate
  @valOne : Float32 = 18.5
  @valTwo : Float32 = 29.9
  @valThree : Float32 = 30
  @total : Float32

  def initialize(@height : Float32, @weight : Float32, @unit : String? = "imperial")
    if (@unit == "imperial")
      calc_height = @height * 12
      @total = 703 * @weight / (calc_height * calc_height)
      if (@total < @valOne)
        status = "Underweight"
      elsif (@total < @valTwo && @total > @valOne)
        status = "Normal"
      elsif (@total < @valTwo && @total > @valOne)
        status = "Overweight"
      elsif (@total > @valThree)
        status = "Obese"
      end

    elsif (@unit == "metric") #The Metric calculations need to be fixed
      calc_height = @height * 100
      @total = @weight / (@height * @height)
      if (@total < @valOne)
        status = "Underweight"
      elsif (@total < @valTwo && @total > @valOne)
        status = "Normal"
      elsif (@total < @valTwo && @total > @valOne)
        status = "Overweight"
      elsif (@total > @valThree)
        status = "Obese"
      end

    else
      puts "Error, not sure what unit you specified, try again..."
      exit
    end

    puts "Your BMI is: #{@total}"
      puts "You're considered: #{status}"
      # puts "#{name}, #{@total},#{status}," # For Logging
  end  
end

