class Raindrops
  DROPS_CONVERTER = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(count)
    result = convert_drops(count)
    return result unless result.empty?
    is_drop?(count, 2) ? count.to_s : '1'
  end

  def self.convert_drops(count)
    DROPS_CONVERTER.keys.each.map { |divider|
      rain_drop = DROPS_CONVERTER[divider]
      is_drop?(count, divider) ? rain_drop : ''
    }.join
  end

  def self.is_drop?(count, divider)
    (count % divider == 0)
  end
end
