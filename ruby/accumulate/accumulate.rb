class Array
  
  def accumulate
    collection = []
    each do |element|
      collection << (yield element)
    end
    collection
  end

end

module BookKeeping; VERSION = 1; end