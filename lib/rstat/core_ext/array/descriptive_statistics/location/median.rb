class Array
  def median
    if self.length != 0
      copy = self.sort

      if copy.length % 2 == 0
        (copy[copy.length / 2 - 1] + copy[copy.length / 2]) / 2.0
      else
        copy[copy.length / 2]
      end
    else
      nil
    end
  end
end
