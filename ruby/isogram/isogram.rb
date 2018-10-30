class Isogram
  def self.isogram?(input)
    letters = input.scan(/[\da-z\s]/i).join
    letters.downcase.split.join.chars.uniq.size == letters.split.join.length
  end
end