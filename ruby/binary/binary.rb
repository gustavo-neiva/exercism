  class Binary

  def self.to_decimal(binary)
    if binary.delete("01") == ""
      digits = (binary.length)-1
      base = 2
      decimal = 0
      result = 0
      binary.split("").each do |digit|
        result += digit.to_i * (base**digits)
        digits -= 1
      end
    result
    else
      raise ArgumentError
    end
  end
end

module BookKeeping; VERSION = 3; end