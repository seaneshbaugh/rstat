class Array
  def percentile p
    if p < 0 || p > 100
      nil
    else
      self.sort[((p.to_f/100.0) * self.length.to_f) - 0.5]
    end
  end

  def interquartile_range
    self.percentile(75) - self.percentile(25)
  end

  def iqr
    self.interquartile_range
  end

  def midspread
    self.interquartile_range
  end

  def middle_fifty
    self.interquartile_range
  end
end