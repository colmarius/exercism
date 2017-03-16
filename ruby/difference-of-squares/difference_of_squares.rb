class Squares
  def initialize(number)
    @numbers = 1.upto(number)
  end

  def square_of_sum
    @square_of_sum ||= square_of(sum_of(numbers))
  end

  def sum_of_squares
    @sum_of_squares ||= begin
      squares = numbers.map { |number| square_of(number) }
      sum_of(squares)
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def sum_of(numbers)
    numbers.inject(0, :+)
  end

  def square_of(number)
    number ** 2
  end

  attr_reader :numbers
end
