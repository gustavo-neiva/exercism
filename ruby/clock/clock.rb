class Clock 

    attr_reader :daily_minutes

    def initialize(args)
        @daily_minutes = (args[:minute] || 0) + (args[:hour] || 0) * 60
        resolve_time
    end

    def to_s
        hours =  "%.2d" % @daily_minutes.divmod(60).first
        minutes = "%.2d" % @daily_minutes.divmod(60).last
        "#{hours}:#{minutes}"
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

    private 

    def resolve_time
        if @daily_minutes >= 0
            while @daily_minutes > 1439
                @daily_minutes -= 1440
            end
        else
            while @daily_minutes < 0
                @daily_minutes += 1440
            end
        end
    end
end