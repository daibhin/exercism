module BookKeeping
  VERSION = 2
end

class Raindrops

  def self.convert(number)
    raindrops_speak = ''
    raindrops_speak << "Pling" if divisible? number, 3
    raindrops_speak << "Plang" if divisible? number, 5
    raindrops_speak << "Plong" if divisible? number, 7
    raindrops_speak.empty? ? number.to_s : raindrops_speak
  end

  def self.divisible?(number, divisor)
    number % divisor == 0
  end
end
