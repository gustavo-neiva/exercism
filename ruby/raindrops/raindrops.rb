require 'prime'

module BookKeeping; VERSION = 3; end
class Raindrops
    def self.convert(number)
      factors = number.prime_division.map(&:first)
        if factors.any? { |number| [3, 5, 7].include? number }
          factors.map do |num|
            if num == 3 
                "Pling"
            elsif num == 5 
                "Plang"
            elsif num == 7 
                "Plong" 
            end
          end.join("")
        else
         number.to_s
        end
    end
end