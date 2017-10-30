require 'time'

module BookKeeping; VERSION = 6; end
class Gigasecond
    def self.from (date)
        Time.at(date)+(10**9)
    end
end
