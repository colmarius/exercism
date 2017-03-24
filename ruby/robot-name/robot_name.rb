class Robot
  LETTERS = ('A'..'Z').to_a.freeze
  NUMBERS = (1..9).to_a.freeze

  @@generated_names = []

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    name = "#{ two_letters }#{ three_numbers }"
    return generate_name if generated?(name)
    add_generated(name)
    name
  end

  def generated?(name)
    @@generated_names.include?(name)
  end

  def add_generated(name)
    @@generated_names << name
  end

  def two_letters
    2.times.map { LETTERS.sample }.join
  end

  def three_numbers
    3.times.map { NUMBERS.sample.to_s }.join
  end
end

module BookKeeping
  VERSION = 2
end
