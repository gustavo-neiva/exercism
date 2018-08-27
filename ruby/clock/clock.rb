class Clock
    def initialize(args)
        @hour = args[:hour] || 0
        @minute = args[:minute] || 0
        time_division
    end

    def to_s
        @time = "#{@hour_string}:#{@minute_string}"
    end
    
    def hour
        @hour_string.to_i
    end

    def minute
        @minute_string.to_i
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

    private
    
    def time_division
        time_division = @minute.divmod(60.0)
        @hour += time_division.first.to_i
        @minutes = time_division.last.to_i
        to_hour
    end

    def to_hour
        hours = @hour%24
        @hour_string = "%.2d" % hours
        @minute_string = "%.2d" % @minutes
    end

end
