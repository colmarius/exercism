class Pangram
  LETTERS_COUNT = 26
  LETTERS = /[a-z]/

  def self.pangram?(phrase)
    unique_letters = phrase.downcase.chars.uniq
    valid_letters = unique_letters.select { |letter| accepted?(letter) }
    valid_letters.count == LETTERS_COUNT
  end

  def self.accepted?(letter)
    letter =~ LETTERS
  end
end

class BookKeeping
  VERSION = 4
end
