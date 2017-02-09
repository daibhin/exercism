module BookKeeping
  VERSION = 1
end

class Grains

  def self.square(num)
    raise ArgumentError if num < 1 || num > 64
    pow = num - 1
    1 * (2**pow)
  end

  def self.total
    (1..64).inject(0) { |sum,x| sum += square(x) }
  end

end
