module Rstat
  def self.sample_correlation_coefficient(x, y)
    return nil if x.length != y.length

    xm = x.mean

    ym = y.mean

    top = x.zip(y).map { |a, b| (a - xm) * (b - ym) }.inject(:+)

    bottom = Math.sqrt(x.map { |a| (a - xm)**2 }.inject(:+)) * Math.sqrt(y.map { |b| (b - ym)**2 }.inject(:+))

    top / bottom
  end

  def self.pearsons_correlation_coefficient(x, y)
    sample_correlation_coefficient(x, y)
  end
end
