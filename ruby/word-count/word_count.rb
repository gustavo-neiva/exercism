class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    new_string = @string.gsub(/( '|' )/, ' ')
    split = new_string.downcase.split(/[^'\p{N}\p{L}\p{M}]+/)
    split.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
  end
end

module BookKeeping; VERSION = 1; end;