module BookKeeping
  VERSION = 1
end

require 'pry'

class Prime
  def self.nth(n)
    raise ArgumentError if n < 1

    primes = [2, 3]
    possible = primes.last

    while n > primes.length
      possible += 2 # not going to be an even number
      if primes.none? { |prime| possible % prime == 0 }
        primes.push(possible)
      end
    end

    primes[n - 1]
  end
end
