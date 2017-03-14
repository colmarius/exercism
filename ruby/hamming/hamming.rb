class Hamming
  def self.compute(first, second)
    raise ArgumentError unless first.length == second.length

    first.chars.each_with_index.map { |char, index|
      char == second[index] ? 0 : 1
    }.inject(0, :+)
  end
end
