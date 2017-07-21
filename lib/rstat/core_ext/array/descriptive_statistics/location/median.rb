class Array
  def median
    return nil if length == 0

    copy = sort

    if copy.length.even?
      (copy[copy.length / 2 - 1] + copy[copy.length / 2]) / 2.0
    else
      copy[copy.length / 2]
    end
  end
end
