VERSION = "0.1.2"
require "admiral"

class BmiValues < Admiral::Command
  define_help description: "A command that returns your BMI by passing data in via flags."
  define_flag name : String,
    description: "Just put in your first naem with no spaces.",
    long: name
  define_argument units : String,
    default: "imperial",
    description: "The Type of units you wish to use, Imperial or Metric."
  define_flag height : Float64,
    default: 6.2,
    description: "This is your height in feet or meters.",
    long: height
  define_flag weight : Int32,
    default: 190,
    description: "This is your weight in pounds.",
    long: weight

  def run
    if (flags.name != nil)
      puts "Hello #{flags.name}!"
    end
    puts "Calculating BMI..."

    if (arguments.units == "imperial")

      calc_height = flags.height * 12
      total_BMI = 703 * flags.weight / (calc_height * calc_height)

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

    elsif (arguments.units == "metric")
      calc_height = flags.height * 100
      total_BMI = flags.weight / (flags.height * flags.height)
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
      puts "Error, not sure what unit, try again..."
      exit
    end
  end
end

BmiValues.run
