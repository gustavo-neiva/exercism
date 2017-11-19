# RLE encoder and decoder
class RunLengthEncoding
  def self.encode(input)
    input.chars
         .chunk { |i| i }
         .map { |char, array| [
           if array.length == 1
             nil
           else
             array.length
           end, char ].join }.join
  end

  def self.decode(input)
    input.scan(/(\d*.)/)
         .flatten
         .map { |elem| 
          if elem.length == 1
            elem[-1]
          else
            elem[-1] * elem[0...-1].to_i
          end }.join
  end
end


module BookKeeping; VERSION = 3; end;