class Array
  def mean
    self.sum.to_f / self.length
  end

  def arithmetric_mean
    self.mean
  end

  def geometric_mean
    self.product.to_f ** (1.0 / self.length)
  end

  def harmonic_mean
    self.length / self.map{ |x| 1.0 / x }.sum.to_f
  end

  def quadratic_mean
    self.power_mean(2)
  end

  def power_mean(p = 1)
    ((1.0 / self.length) * self.map{ |x| x ** p }.sum.to_f) ** (1.0 / p)
  end
end