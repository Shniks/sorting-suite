require 'pry'

class InsertionSort

  def sort(unsorted)
    sorted = []
    unsorted.length.times do
      iteration(unsorted, sorted)
    end
    sorted
  end

  def iteration(unsorted, sorted)
    first = unsorted.first
    if sorted.empty?
      sorted << first
    else
      sorted.each_with_index do |v, i|
        if v > first
          sorted.insert(i, first)
          break
        end
      end
    end
    unsorted.shift
  end

end
