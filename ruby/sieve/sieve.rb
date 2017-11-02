module BookKeeping; VERSION = 1; end

class Sieve
  def initialize(number)
    @numbers = [nil, nil, *2..number]
    @number = number
  end

  def primes
  (2..Math.sqrt(@number)).each do |num|
    (num**2..@number).step(num){|cut| @numbers[cut] = nil}  if @numbers[num]
    end
  @numbers.compact
  end
end