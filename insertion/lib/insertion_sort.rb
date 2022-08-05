class InsertionSort

  def sort(unsorted)
    sorted = []
    until unsorted.empty?
      iteration(unsorted, sorted)
    end
    sorted
  end

  def iteration(unsorted, sorted)
    if sorted.empty?
      sorted_empty(unsorted, sorted)
    else
      sorted_not_empty(unsorted, sorted)
    end
    pull_element_from_unsorted(unsorted)
  end

  def sorted_empty(unsorted, sorted)
    sorted << unsorted.first
  end

  def sorted_not_empty(unsorted, sorted)
    first = unsorted.first # First element in unsorted array
    insert(sorted, first)
  end

  def insert(sorted, first)
    sorted.each_with_index do |value, index|
      if value > first
        sorted.insert(index, first)
        break
      elsif index + 1 == sorted.length
        sorted.push(first)
        break
      end
    end
  end

  def pull_element_from_unsorted(unsorted)
    unsorted.shift
  end

end
