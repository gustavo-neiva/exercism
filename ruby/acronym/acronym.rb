class Acronym

    def self.abbreviate(string)
        string.split(/\W/).reject(&:empty?).map { |word| word.chars.first.upcase }.join
    end

end