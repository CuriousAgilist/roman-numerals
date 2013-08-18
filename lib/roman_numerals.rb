#to run enter "rspec -fd" from the project directory (make sure rvm has rspec installed)
class RomanNumerals
  def initialize
    @one_to_nine = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
    @ten_to_ninety = ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
    @hundred_to_9hundred = ['C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
    @thousand_to_4thousand = ['M', 'MM', 'MMM', 'MMMM']
  end
  def getRN(given_number)
    result = ""
    if given_number.between?(1000,4999)
      result << @thousand_to_4thousand[given_number/1000-1]
      given_number = given_number.modulo(1000)
    end
    if given_number.between?(100,999)
      result << @hundred_to_9hundred[given_number/100-1]
      given_number = given_number.modulo(100)
    end
    if given_number.between?(10,99)
      result << @ten_to_ninety[given_number/10-1]
      given_number = given_number.modulo(10)
    end
    if given_number.between?(1,10) then result << @one_to_nine[given_number-1] end
    return result
  end
end
