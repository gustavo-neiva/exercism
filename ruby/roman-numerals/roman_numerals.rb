module BookKeeping; VERSION = 2; end

class Fixnum
  
  RN = {
      1 => "I",
      4 => "IV",
      5 => "V",
      9 => "IX",
      10 => "X",
      40 => "XL",
      50 => "L",
      90 => "XC",
      100 => "C",
      400 => "CD",
      500 => "D",
      900 => "CM",
      1000 => "M"
      }
      
  def to_roman
    result = ''
    number = self
    RN.keys.reverse.each do |decimal|
      while number >= decimal
        number -= decimal
        result += RN[decimal]
      end
    end
    result
  end
  
end