class Array
  def mode
    return self if length <= 1

    seen = Hash.new(0)

    each { |value| seen[value] += 1 }

    max = seen.values.max

    seen.find_all { |_key, value| value == max }.map { |key, _value| key }.sort
  end
end
