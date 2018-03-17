# Script to determine the hamming distance between two lists of nucleotides.
module BookKeeping
  VERSION = 3
end

def same_size?(dna1,dna2)
  raise ArgumentError.new if dna1.length!=dna2.length
end

def hamming_no(dna1,dna2)
  hdistance=0
  dna1.zip(dna2).each do |base1, base2|
    if base1 != base2 then hdistance += 1 end
  end
  hdistance
end

class Hamming
  def self.compute(dna1,dna2)
    same_size?(dna1,dna2)
    hamming_no(dna1.split(''),dna2.split(''))
  end
end
