class Array
  def skewness
    central_moment(3) / (variance**1.5)
  end
end
