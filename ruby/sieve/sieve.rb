module BookKeeping; VERSION = 1; end

class Sieve
  def initialize(number)
    if number >= 2 
        @primes = [*2..number]
    else
        @primes = []
    end
  end

  def primes
    index = 0
    if @primes.length == 0
        return []
    else
      while @primes[index]**2 <= @primes.last
          prime = @primes[index]
          @primes = @primes.select { |num| num == prime || num%prime != 0 }
          index += 1
      end
    @primes
    end
  end
  
end