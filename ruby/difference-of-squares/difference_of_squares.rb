class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    number_sum = (1..@number).inject(0) { |sum, number| sum += number }
    number_sum**2
  end

  def sum_of_squares
    (1..@number).inject(0) do |sum, number|
      squared_number = number**2
      sum += squared_number
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
