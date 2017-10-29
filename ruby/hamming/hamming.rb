module BookKeeping; VERSION = 3; end
class Hamming
  def self.compute (a, b)
    raise ArgumentError.new("Strands are unequal in size") if a.length != b.length 
    a.chars.zip(b.chars).count { |l, r| l != r }
  end
end
