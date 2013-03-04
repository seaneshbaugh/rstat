module Rstat
  def self.simple_linear_regression(x, y)
    if x.length != y.length
      return nil
    end

    n = x.length

    xy = x.zip(y).map { |a| a[0] * a[1] }

    xx = x.map { |a| a * a }

    sumx = x.sum

    sumy = y.sum

    sumxy = xy.sum

    sumxx = xx.sum

    slope = ((n * sumxy) - (sumx * sumy)) / ((n * sumxx) - (sumx ** 2))

    intercept = (sumy - (slope * sumx)) / n

    { :slope => slope, :intercept => intercept }
  end

  def self.simple_linear_regression_slope(x, y)
    if x.length != y.length
      return nil
    end

    Rstat.simple_linear_regression(x, y)[:slope]
  end

  def self.simple_linear_regression_intercept(x, y)
    if x.length != y.length
      return nil
    end

    Rstat.simple_linear_regression(x, y)[:intercept]
  end
end
