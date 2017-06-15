//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function(number) {
  this.year = number;
};

Year.prototype.isLeap = function() {
  var year = this.year
  return year % 400 === 0 ||
    (year % 4 === 0 && year % 100 !== 0);
};

module.exports = Year;
