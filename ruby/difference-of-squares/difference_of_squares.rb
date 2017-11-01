module BookKeeping; VERSION = 4; end

class Squares
    def initialize(number)
        @number = number
        @natural_numbers = [*1..@number]
    end

    def sum_of_squares
        sum_of_squares = @natural_numbers.map{ |num| num**2 }.reduce(:+)
    end

    def square_of_sum
        square_of_sum = (@natural_numbers.inject(:+)**2)
    end

    def difference
        square_of_sum - sum_of_squares
    end

end