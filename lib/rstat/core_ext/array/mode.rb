class Array
  def mode
    if self.length <= 1
      return self
    end

    values = Hash[*self.collect { |x| [x, 0] }.flatten]

    self.map{ |x| values[x] += 1 }

    q = values.sort_by{ |key, value| value }.reverse

    if q[0][1] == q[1][1]
      modes = []

      q.each_cons(2) do |pair|
        if !pair[1].nil? and pair[0][1] == pair[1][1]
          modes << pair[0][0]
          modes << pair[1][0]
        else
          break
        end
      end

      modes.uniq.sort
    else
      [q[0][0]]
    end
  end
end
