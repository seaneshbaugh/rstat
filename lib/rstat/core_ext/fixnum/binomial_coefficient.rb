class Fixnum
  def binomial_coefficient(bottom)
    (self - bottom + 1 .. self).inject(:*) / (2 .. bottom).inject(:*)
  end
end
