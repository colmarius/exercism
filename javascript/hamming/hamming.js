const Hamming = function () {}

Hamming.prototype.compute = function(left, right) {
  if (left.length !== right.length)
    throw new Error('DNA strands must be of equal length.')

  const leftStrand = Array.from(left)
  const rightStrand = Array.from(right)
  const distances = leftStrand.map((letter, index) => (
    rightStrand[index] === letter ? 0 : 1
  ))

  return distances.reduce((acc, val) => acc + val, 0)
}

module.exports = Hamming
