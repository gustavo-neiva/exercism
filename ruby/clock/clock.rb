class Clock 
    MINUTES_PER_HOUR = 60
    MINUTES_PER_DAY = 1440

    attr_reader :daily_minutes

    def initialize(minute: 0, hour: 0)
        @daily_minutes = (minute + hour * MINUTES_PER_HOUR).modulo(MINUTES_PER_DAY)
    end

    def to_s
        divmod = @daily_minutes.divmod(MINUTES_PER_HOUR)    
        format("%.2d:%.2d", divmod.first, divmod.last)
    end

    def +(other)
        Clock.new({minute: @daily_minutes + other.daily_minutes})
    end

    def -(other)
        Clock.new({minute: @daily_minutes - other.daily_minutes})
    end

    def ==(other)
        @daily_minutes.eql? other.daily_minutes
    end
end