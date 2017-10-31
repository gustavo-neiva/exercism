module BookKeeping; VERSION = 4; end
class Complement
    def self.of_dna(sequence)
        return '' unless sequence =~ /\A[GCTA]+\z/
        sequence.gsub!(/[CATG]/, "T"=> "A", "A"=> "U", "C"=> "G", "G"=> "C")
    end
end
