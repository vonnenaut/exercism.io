# Code
#########
class ResistorColorDuo
  COLOR_TO_DIGIT = {
    "Black" => 0,
    "Brown" => 1,
    "Red" => 2,
    "Orange" => 3,
    "Yellow" => 4,
    "Green" => 5,
    "Blue" => 6,
    "Violet" => 7,
    "Grey" => 8,
    "White" => 9
  }

  def self.value(color_array)
    num_digits = color_array.length
    digit_array = []

    color_array.each do |color|
      digit_array << COLOR_TO_DIGIT[color]
    end

    power = num_digits - 1
    value = ''

    digit_array.each do |digit|
      value += digit.to_s
    end
    value.to_i
  end
end

p ResistorColorDuo.value(['Blue', 'Red']) # == 62