module BookKeeping
  VERSION = 1
end

class Phrase

  @word_counts

  def initialize(sentence)
    @word_counts = Hash.new(0)
    words = sentence.split(/[\s,]/)
    words.reject! { |w| w.empty? }
    words.each { |w| w.downcase! }
    words.each { |w| w.gsub!(/[^0-9a-z']/, '') }
    words.each { |w| remove_quotations(w) }
    words.each do |w|
      @word_counts[w] += 1
    end
  end

  def remove_quotations(word)
    word.gsub!(/'$/, '')
    word.gsub!(/^'/, '')
  end

  def word_count
    @word_counts
  end

end
