class Array
  def kurtosis
    (self.central_moment(4) / self.variance ** 2) - 3
  end
end