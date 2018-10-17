class Robot

    @@stack = ('AA000'..'ZZ999').to_a.shuffle

    attr_reader :name

    def initialize
        @name = generate_name
    end

    def self.forget
        @@stack = ('AA000'..'ZZ999').to_a.shuffle
    end

    def reset
        initialize
    end

    private
    
    def generate_name
        @@stack.pop
    end

end