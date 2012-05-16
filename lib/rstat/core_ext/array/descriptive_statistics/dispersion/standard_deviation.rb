class Array
  def standard_deviation
    Math.sqrt(self.variance)
  end

  def std_dev
    self.standard_deviation
  end

  def coefficient_of_variation
    self.standard_deviation / self.mean
  end
end
