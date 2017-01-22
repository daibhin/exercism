module BookKeeping
  VERSION = 4
end

class Complement

  def self.of_dna(dna)
    return '' unless valid?(dna)

    dna.tr('GCTA', 'CGAU')
  end

  def self.valid?(strand)
    strand.match /\A[ACTG]+\z/
  end
end
