class Array
  def kurtosis
    (central_moment(4) / variance**2) - 3
  end
end
