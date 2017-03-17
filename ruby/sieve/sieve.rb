class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    found = []
    next_number = 2
    while next_number <= number
      unless found.any? { |num| next_number % num == 0 }
        found << next_number
      end
      next_number += 1
    end
    found
  end

  private

  attr_reader :number
end

module BookKeeping
  VERSION = 1
end
