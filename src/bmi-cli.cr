VERSION = "0.1.2"
require "admiral"

class BmiValues < Admiral::Command
  define_help description: "A command that returns your BMI by passing data in via flags."
  define_flag name : String,
              description: "Just put in your first naem with no spaces.",
              long: name
  define_flag units : String,
              default: "Imperial",
              description: "The Type of units you wish to use, note that only Imperial work at the moment.",
              long: units
  define_flag height : Float64,
              default: 5.11,
              description: "This is your height in feet.",
              long: height
  define_flag weight : Int32,
              default: 180,
              description: "This is your weight in pounds.",
              long: weight

  def run
    if (flags.name != nil)
      puts "Hello #{flags.name}!"
    end
    puts "Calculating BMI..."

    if (flags.units != nil)
      calc_height = flags.height * 12
      total_BMI = (flags.weight / (calc_height * calc_height)) * 703

      if (total_BMI < 18.5)
        bmi_string = "Underweight"
      elsif (total_BMI < 29.9 && total_BMI > 18.5)
        bmi_string = "Normal"
      elsif (total_BMI < 29.9 && total_BMI > 18.5)
        bmi_string = "Overweight"
      elsif (total_BMI > 30)
        bmi_string = "Obese"
      end

      puts "Your BMI is: #{total_BMI}"
      puts "You're considered: #{bmi_string}"
      # puts "#{name}, #{total_BMI},#{bmi_string}," # For Logging
    else
      puts "Error, not sure what happened, try again..."
      exit
    end

  end
end

BmiValues.run

