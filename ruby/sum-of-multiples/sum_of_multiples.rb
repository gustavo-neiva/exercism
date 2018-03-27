class SumOfMultiples
  def initialize(*number)
    @numbers = number
  end
  
  def to(upto)
    if @numbers.empty?
      return 0
    else
      @numbers.map do |number|
        (0..upto - 1).select { |char| (char % number).zero? }
      end.flatten.uniq.inject(:+)
    end
  end
end

module BookKeeping; VERSION = 2; end
