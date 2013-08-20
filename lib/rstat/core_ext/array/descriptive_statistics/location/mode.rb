class Array
  def mode
    if self.length <= 1
      return self
    end

    seen = Hash.new(0)

    self.each{ |value| seen[value] += 1 }

    max = seen.values.max

    seen.find_all{ |key, value| value == max }.map{ |key, value| key }.sort
  end
end
