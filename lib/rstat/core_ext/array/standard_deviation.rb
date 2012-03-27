class Array
  def variance
    mean = self.mean

    (1.0 / self.length) * self.map{|x| (x - mean) ** 2}.inject(:+)
  end

  def standard_deviation
    Math.sqrt(self.variance)
  end

  def std_dev
    self.standard_deviation
  end
end
