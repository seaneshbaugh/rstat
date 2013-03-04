class Array
  def skewness
    self.central_moment(3) / (self.variance ** 1.5)
  end
end
