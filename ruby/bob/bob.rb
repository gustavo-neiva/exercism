class Bob
  def self.hey(remark)
    if remark.strip.empty?
      "Fine. Be that way!"
    elsif remark == remark.upcase && remark =~ /[A-Z]/
      "Whoa, chill out!"
    elsif remark.strip[-1] == "?" 
      "Sure."
    else
      "Whatever."
    end
  end
  
end
module BookKeeping; VERSION = 1; end