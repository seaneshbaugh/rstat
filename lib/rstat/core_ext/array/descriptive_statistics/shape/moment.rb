class Array
  def central_moment k
    if k < 0
      nil
    else
      mean = self.mean

      (1.0 / self.length) * self.map{ |x| (x - mean) ** k }.sum
    end
  end

  def raw_moment k
    if k < 0
      nil
    else
      (1.0 / self.length) * self.map{ |x| x ** k }.sum
    end
  end

  # def l_moment k
  #
  # end
end