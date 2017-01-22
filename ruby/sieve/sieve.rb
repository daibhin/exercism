class Sieve

  def initialize(number)
    @max = number
    @primes = Array.new(number + 1, true)
  end

  def primes
    (2..Math.sqrt(@max)).each do |number|
      mark_multiples(number)
    end
    select_prime_numbers
  end

  def mark_multiples(number)
    multiple = number**2
    while multiple <= @max
      @primes[multiple] = false
      multiple += number
    end
  end

  def select_prime_numbers
    @primes.each_index.select{|index| is_prime?(index) && index > 1}
  end

  def is_prime?(index)
    @primes[index] == true
  end
end
