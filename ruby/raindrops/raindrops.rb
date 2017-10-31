require 'prime'

module BookKeeping; VERSION = 3; __END__
class Raindrops
    def self.convert(number)
      factors = number.prime_division.map(&:first)
      if factors.any? { |number| [3, 5, 7].include? number }
        
    end
end