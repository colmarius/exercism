class Fixnum
  NUMBERS_TO_ROMAN = {
    1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8 => 'VIII',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }.freeze

  def to_roman
    num = self
    results = []
    while num > 0
      biggest = biggest_from(num)
      results << next_roman_from(biggest)
      num -= biggest
    end
    results.join
  end

  def biggest_from(num)
    NUMBERS_TO_ROMAN.keys.reverse.find { |key| key <= num }
  end

  def next_roman_from(num)
    NUMBERS_TO_ROMAN.fetch(num)
  end
end

module BookKeeping
  VERSION = 2
end
