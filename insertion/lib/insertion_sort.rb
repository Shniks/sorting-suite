class InsertionSort

  def sort(unsorted)
    sorted = []
    until unsorted.empty?
      iteration(unsorted, sorted)
    end
    sorted
  end

  def iteration(unsorted, sorted)
    first = unsorted.first # First element in unsorted array
    sorted << first if sorted.empty?
    insert(sorted, first) if !sorted.empty?
    pull_element_from_unsorted(unsorted)
  end

  def insert(sorted, first)
    sorted.each_with_index do |value, index|
      if value > first
        sorted.insert(index, first)
        break
      end
    end
  end

  def pull_element_from_unsorted(unsorted)
    unsorted.shift
  end

end
