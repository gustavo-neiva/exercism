class Clock 

    attr_reader :daily_minutes

    def initialize(minute: 0, hour: 0)
        @daily_minutes = (minute + hour * 60).modulo(1440)
    end

    def to_s
        divmod = @daily_minutes.divmod(60)    
        format("%.2d:%.2d", divmod.first, divmod.last)
    end

    def +(other)
        Clock.new({minute: @daily_minutes + other.daily_minutes})
    end

    def -(other)
        Clock.new({minute: @daily_minutes - other.daily_minutes})
    end

    def ==(other)
        @daily_minutes == other.daily_minutes
    end
end