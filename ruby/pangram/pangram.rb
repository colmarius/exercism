class Pangram
  ALPHABET_COUNT = 26
  CHAR_REGEXP = /[a-z]/

  def self.pangram?(phrase)
    uniq_chars = phrase.downcase.chars.uniq
    valid_chars = uniq_chars.select { |char| valid_char?(char) }
    valid_chars.count == ALPHABET_COUNT
  end

  def self.valid_char?(char)
    char =~ CHAR_REGEXP
  end
end

class BookKeeping
  VERSION = 4
end
