class Array
  def percentile(p)
    if p < 0 || p > 100
      nil
    else
      sort[((p.to_f / 100.0) * length.to_f) - 0.5]
    end
  end

  def interquartile_range
    percentile(75) - percentile(25)
  end

  def iqr
    interquartile_range
  end

  def midspread
    interquartile_range
  end

  def middle_fifty
    interquartile_range
  end
end
