module BookKeeping; VERSION = 4; end

class Squares
  def initialize(number)
    @numbers = (1..number)
  end

  def sum_of_squares
    @numbers.sum { |num| num**2 }
  end

  def square_of_sum
    @numbers.sum**2
  end

  def difference
    square_of_sum - sum_of_squares
  end

end