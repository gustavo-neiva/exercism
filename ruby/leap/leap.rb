module BookKeeping; VERSION = 3; end;

class Year
  def self.leap?(year)
    if year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 )
      true 
    end 
  end
end