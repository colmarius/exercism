class Complement
  DNA = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U',
    'U' => ''
  }
  DNA.default = ''

  def self.of_dna(input)
    result = result_dna_from(input)
    input.length == result.length ? result : ''
  end

  def self.result_dna_from(input)
    input.chars.each.map { |char| DNA[char] }.join
  end
end
