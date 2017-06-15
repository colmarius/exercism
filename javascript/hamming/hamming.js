const Hamming = function () {}

Hamming.prototype.compute = function(left, right) {
  if (left.length !== right.length)
    throw new Error('DNA strands must be of equal length.')

  const leftLetters = Array.from(left)
  const rightLetters = Array.from(right)
  const distances = leftLetters.map((letter, index) => (
    rightLetters[index] === letter ? 0 : 1
  ))

  return distances.reduce((acc, val) => acc + val, 0)
}

module.exports = Hamming
