module BookKeeping
  VERSION = 2
end

require 'pry'

class RunLengthEncoding

  def self.encode(input)
    encoded = ''
    index = 0
    char_count = 1
    while index < input.length
      char = input[index]
      next_char = input[index+1]
      unless char == next_char
        encoded << char_count.to_s if char_count > 1
        encoded << char
        char_count = 1
      else
        char_count += 1
      end
      index += 1
    end
    encoded
  end

  def self.decode(input)
    char_counts = []
    prev_index = 0
    index = 0

    while index < input.length
      char = input[index]
      unless digit?(char)
        amt = input[prev_index...index]
        amt = 1 if amt.empty?
        char_counts << [amt,char]
        prev_index = index + 1
      end
      index += 1
    end

    decoded = char_counts.map do |arr|
      times = arr[0].to_i
      char = arr[1]
      [char].cycle(times).to_a.join
    end
    decoded.join
  end

  def self.digit?(char)
    char =~ /[[:digit:]]/
  end

end
