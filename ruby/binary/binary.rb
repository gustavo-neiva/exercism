  class Binary

  def self.to_decimal(binary)
    if binary.delete("01") == ""
      binary.chars.reduce(0) { |result, element| (result*2) + element.to_i}
    else
      raise ArgumentError
    end
  end
end

module BookKeeping; VERSION = 3; end