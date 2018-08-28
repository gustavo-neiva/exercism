class Clock 
    def initialize(args)
        @minute = args[:minute] || 0
        @hour = args[:hour] || 0
        seconds = @minute*60 + @hour*3600
        now = Time.now
        midnight = Time.new(now.year, now.month, now.day, 0, 0, 0)
        @time = Time.at(midnight.to_i + seconds)
      end

    def to_s
        @time.strftime("%H:%M")
    end

    def hour
        @time.strftime("%H").to_i
    end

    def minute
        @time.strftime("%M").to_i
    end

    def +(other)
        Clock.new({hour: @hour + other.hour, minute: @minute + other.minute})
    end

    def -(other)
        Clock.new({hour: @hour - other.hour, minute: @minute - other.minute})
    end

    def ==(other)
        @hour == other.hour && @minute == other.minute        
    end
end