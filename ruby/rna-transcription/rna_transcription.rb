module BookKeeping; VERSION = 4; end
class Complement
    def self.of_dna(sequence)
        return '' unless sequence =~ /\A[GCTA]+\z/
        sequence.tr("GATC", "CUAG")
    end
end
