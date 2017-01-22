class Pangram

  def self.is_pangram?(sentence)
    return false if sentence.empty?
    ('a'..'z').all? do |letter|
      sentence.downcase.include?(letter)
    end
  end
end

module BookKeeping
  VERSION = 2
end
