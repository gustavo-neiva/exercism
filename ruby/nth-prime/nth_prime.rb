module BookKeeping; VERSION = 1; end;

class Prime
  def self.nth(number)
    primes = []
    counter = 1
    raise(ArgumentError, "0, really?") if number.zero?
    while primes.length <= number
      primes.push(counter) if (2..counter-1).all? { |denom| counter % denom > 0 }
      counter += 1
    end
    primes[-1]
  end
end