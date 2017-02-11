module BookKeeping
  VERSION = 1
end

class Grains

  def self.square(num)
    raise ArgumentError if num < 1 || num > 64
    2**(num - 1)
  end

  def self.total
    (1..64).inject { |sum,x| sum += square(x) }
  end

end
