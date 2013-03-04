class Fixnum
  def binomial_coefficient(bottom)
    (self - bottom + 1 .. self).inject(1, &:*) / (2 .. bottom).inject(1, &:*)
  end
end
