VERSION = "0.2.2"
require "admiral"
require "./bmi/**"

class BmiValues < Admiral::Command
  define_version VERSION
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
    BmiValues::Calculate.new(flags.height, flags.weight, arguments.units)
  end
end

BmiValues.run