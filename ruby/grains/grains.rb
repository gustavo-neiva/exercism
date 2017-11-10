module BookKeeping; VERSION = 1; end;

class Grains
  def self.square(number)
    if number.between?(1, 64)
      1 << number - 1
    else 
      raise ArgumentError
    end
  end

  def self.total
    (1 << 64)-1
  end
end