class Array
  def central_moment(k)
    if k < 0
      nil
    else
      m = mean

      (1.0 / length) * map { |x| (x - m)**k }.sum
    end
  end

  def raw_moment(k)
    if k < 0
      nil
    else
      (1.0 / length) * map { |x| x**k }.sum
    end
  end

  # def l_moment k
  #
  # end
end
