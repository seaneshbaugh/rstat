class Array
  def standard_deviation
    Math.sqrt(variance)
  end

  def std_dev
    standard_deviation
  end

  def coefficient_of_variation
    standard_deviation / mean
  end
end
