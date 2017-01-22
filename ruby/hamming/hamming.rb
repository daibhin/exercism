module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length
    pairs = strand_one.chars.zip(strand_two.chars)
    pairs.count do |nucleotide_one, nucleotide_two|
      nucleotide_one != nucleotide_two
    end
  end
end
