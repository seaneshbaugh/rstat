class Array
  def mean
    sum.to_f / length
  end

  def arithmetric_mean
    mean
  end

  def geometric_mean
    product.to_f**(1.0 / length)
  end

  def harmonic_mean
    length / map { |x| 1.0 / x }.sum.to_f
  end

  def quadratic_mean
    power_mean(2)
  end

  def power_mean(p = 1)
    ((1.0 / length) * map { |x| x**p }.sum.to_f)**(1.0 / p)
  end
end
