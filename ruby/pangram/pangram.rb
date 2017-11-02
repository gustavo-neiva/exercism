module BookKeeping; VERSION = 6; end

class Pangram
  def self.pangram?(phrase)
    phrase = phrase.downcase
    ('a'..'z').all? { |letter| phrase.include? (letter) }
  end
end